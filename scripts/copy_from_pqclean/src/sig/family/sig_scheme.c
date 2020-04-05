#include <stdlib.h>

#include <oqs/sig_{{ family }}.h>

{% for scheme in schemes -%}
#ifdef OQS_ENABLE_SIG_{{ family }}_{{ scheme['scheme'] }}

OQS_SIG *OQS_SIG_{{ family }}_{{ scheme['scheme'] }}_new() {

	OQS_SIG *sig = malloc(sizeof(OQS_SIG));
	if (sig == NULL) {
		return NULL;
	}
	sig->method_name = OQS_SIG_alg_{{ family }}_{{ scheme['scheme'] }};
	sig->alg_version = "{{ scheme['metadata']['implementations'][0]['version'] }}";

	sig->claimed_nist_level = {{ scheme['metadata']['claimed-nist-level'] }};
	sig->euf_cma = {{ scheme['metadata']['euf_cma'] }};

	sig->length_public_key = OQS_SIG_{{ family }}_{{ scheme['scheme'] }}_length_public_key;
	sig->length_secret_key = OQS_SIG_{{ family }}_{{ scheme['scheme'] }}_length_secret_key;
	sig->length_signature = OQS_SIG_{{ family }}_{{ scheme['scheme'] }}_length_signature;

	sig->keypair = OQS_SIG_{{ family }}_{{ scheme['scheme'] }}_keypair;
	sig->sign = OQS_SIG_{{ family }}_{{ scheme['scheme'] }}_sign;
	sig->verify = OQS_SIG_{{ family }}_{{ scheme['scheme'] }}_verify;

	return sig;
}

{% for impl in scheme['metadata']['implementations'] %}
{% if impl['name']|upper != "CLEAN" -%}
#if defined(OQS_ENABLE_SIG_{{ family }}_{{ scheme['scheme'] }}_{{ impl['name'] }})
{% endif -%}
int PQCLEAN_{{ scheme['pqclean_scheme_c']|upper }}_{{ impl['name']|upper }}_crypto_sign_keypair(uint8_t *pk, uint8_t *sk);
int PQCLEAN_{{ scheme['pqclean_scheme_c']|upper }}_{{ impl['name']|upper }}_crypto_sign_signature(uint8_t *sig, size_t *siglen, const uint8_t *m, size_t mlen, const uint8_t *sk);
int PQCLEAN_{{ scheme['pqclean_scheme_c']|upper }}_{{ impl['name']|upper }}_crypto_sign_verify(const uint8_t *sig, size_t siglen, const uint8_t *m, size_t mlen, const uint8_t *pk);
{% if impl['name']|upper != "CLEAN" -%}
#endif
{% endif -%}
{% endfor %}

OQS_API OQS_STATUS OQS_SIG_{{ family }}_{{ scheme['scheme'] }}_keypair(uint8_t *public_key, uint8_t *secret_key) {
{% if scheme['metadata']['implementations']|length > 1 -%}
{% for impl in scheme['metadata']['implementations'] -%}
{% if impl['name'] != 'clean' -%}
#if {{ impl['required_defines'] }} && defined(OQS_ENABLE_SIG_{{ family }}_{{ scheme['scheme'] }}_{{ impl['name'] }})
#ifdef OQS_ENABLE_CPUFEATURES
	if ({{ impl['rt_options'] }}) {
		return (OQS_STATUS) PQCLEAN_{{ scheme['pqclean_scheme_c']|upper }}_{{ impl['name']|upper }}_crypto_sign_keypair(public_key, secret_key);
	} else {
		return (OQS_STATUS) PQCLEAN_{{ scheme['pqclean_scheme_c']|upper }}_CLEAN_crypto_sign_keypair(public_key, secret_key);
	}
#else
	return (OQS_STATUS) PQCLEAN_{{ scheme['pqclean_scheme_c']|upper }}_{{ impl['name']|upper }}_crypto_sign_keypair(public_key, secret_key);
#endif
{% endif -%}
{% endfor -%}
{% endif -%}
{% if scheme['metadata']['implementations']|length > 1 -%}
#else
	// Assume CLEAN always compiles
	return (OQS_STATUS) PQCLEAN_{{ scheme['pqclean_scheme_c']|upper }}_CLEAN_crypto_sign_keypair(public_key, secret_key);
{% else %}
	return (OQS_STATUS) PQCLEAN_{{ scheme['pqclean_scheme_c']|upper }}_{{ scheme['metadata']['implementations'][0]['name']|upper }}_crypto_sign_keypair(public_key, secret_key);
{% endif -%}
{% if scheme['metadata']['implementations']|length > 1 -%}
#endif
{% endif -%}
}

OQS_API OQS_STATUS OQS_SIG_{{ family }}_{{ scheme['scheme'] }}_sign(uint8_t *signature, size_t *signature_len, const uint8_t *message, size_t message_len, const uint8_t *secret_key) {
{% if scheme['metadata']['implementations']|length > 1 -%}
{% for impl in scheme['metadata']['implementations'] -%}
{% if impl['name'] != 'clean' -%}
#if {{ impl['required_defines'] }} && defined(OQS_ENABLE_SIG_{{ family }}_{{ scheme['scheme'] }}_{{ impl['name'] }})
#ifdef OQS_ENABLE_CPUFEATURES
	if ({{ impl['rt_options'] }}) {
		return (OQS_STATUS) PQCLEAN_{{ scheme['pqclean_scheme_c']|upper }}_{{ impl['name']|upper }}_crypto_sign_signature(signature, signature_len, message, message_len, secret_key);
	} else {
		return (OQS_STATUS) PQCLEAN_{{ scheme['pqclean_scheme_c']|upper }}_CLEAN_crypto_sign_signature(signature, signature_len, message, message_len, secret_key);
	}
#else
	return (OQS_STATUS) PQCLEAN_{{ scheme['pqclean_scheme_c']|upper }}_{{ impl['name']|upper }}_crypto_sign_signature(signature, signature_len, message, message_len, secret_key);
#endif
{% endif -%}
{% endfor -%}
{% endif -%}
{% if scheme['metadata']['implementations']|length > 1 -%}
#else
	// Assume CLEAN always compiles
	return (OQS_STATUS) PQCLEAN_{{ scheme['pqclean_scheme_c']|upper }}_CLEAN_crypto_sign_signature(signature, signature_len, message, message_len, secret_key);
{% else %}
	return (OQS_STATUS) PQCLEAN_{{ scheme['pqclean_scheme_c']|upper }}_{{ scheme['metadata']['implementations'][0]['name']|upper }}_crypto_sign_signature(signature, signature_len, message, message_len, secret_key);
{% endif -%}
{% if scheme['metadata']['implementations']|length > 1 -%}
#endif
{% endif -%}
}

OQS_API OQS_STATUS OQS_SIG_{{ family }}_{{ scheme['scheme'] }}_verify(const uint8_t *message, size_t message_len, const uint8_t *signature, size_t signature_len, const uint8_t *public_key) {
{% if scheme['metadata']['implementations']|length > 1 -%}
{% for impl in scheme['metadata']['implementations'] -%}
{% if impl['name'] != 'clean' -%}
#if {{ impl['required_defines'] }} && defined(OQS_ENABLE_KEM_{{ family }}_{{ scheme['scheme'] }}_{{ impl['name'] }})
#ifdef OQS_ENABLE_CPUFEATURES
	if ({{ impl['rt_options'] }}) {
		return (OQS_STATUS) PQCLEAN_{{ scheme['pqclean_scheme_c']|upper }}_{{ impl['name']|upper }}_crypto_sign_verify(signature, signature_len, message, message_len, public_key);
	} else {
		return (OQS_STATUS) PQCLEAN_{{ scheme['pqclean_scheme_c']|upper }}_CLEAN_crypto_sign_verify(signature, signature_len, message, message_len, public_key);
	}
#else
	return (OQS_STATUS) PQCLEAN_{{ scheme['pqclean_scheme_c']|upper }}_{{ impl['name']|upper }}_crypto_sign_verify(signature, signature_len, message, message_len, public_key);
#endif
{% endif -%}
{% endfor -%}
{% endif -%}
{% if scheme['metadata']['implementations']|length > 1 -%}
#else
	// Assume CLEAN always compiles
	return (OQS_STATUS) PQCLEAN_{{ scheme['pqclean_scheme_c']|upper }}_CLEAN_crypto_sign_verify(signature, signature_len, message, message_len, public_key);
{% else %}
	return (OQS_STATUS) PQCLEAN_{{ scheme['pqclean_scheme_c']|upper }}_{{ scheme['metadata']['implementations'][0]['name']|upper }}_crypto_sign_verify(signature, signature_len, message, message_len, public_key);
{% endif -%}
{% if scheme['metadata']['implementations']|length > 1 -%}
#endif
{% endif -%}
}

#endif
{% endfor -%}
