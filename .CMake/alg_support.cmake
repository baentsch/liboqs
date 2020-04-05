include(CMakeDependentOption)

set(OQS_KEM_DEFAULT "OQS_KEM_alg_frodokem_640_aes")
set(OQS_SIG_DEFAULT "OQS_SIG_alg_dilithium_2")

if(NOT WIN32)
    option(OQS_USE_OPENSSL "" ON)
    cmake_dependent_option(OQS_USE_AES_OPENSSL "" ON "OQS_USE_OPENSSL" OFF)
    cmake_dependent_option(OQS_USE_SHA2_OPENSSL "" ON "OQS_USE_OPENSSL" OFF)
    cmake_dependent_option(OQS_USE_SHA3_OPENSSL "" ON "OQS_USE_OPENSSL" OFF)

    option(OQS_ENABLE_KEM_BIKE "" ON)
    cmake_dependent_option(OQS_ENABLE_KEM_bike1_l1_cpa "" ON "OQS_ENABLE_KEM_BIKE" OFF)
    cmake_dependent_option(OQS_ENABLE_KEM_bike1_l1_fo "" ON "OQS_ENABLE_KEM_BIKE" OFF)
    cmake_dependent_option(OQS_ENABLE_KEM_bike1_l3_cpa "" ON "OQS_ENABLE_KEM_BIKE" OFF)
    cmake_dependent_option(OQS_ENABLE_KEM_bike1_l3_fo "" ON "OQS_ENABLE_KEM_BIKE" OFF)
endif()

option(OQS_ENABLE_KEM_FRODOKEM "" ON)
cmake_dependent_option(OQS_ENABLE_KEM_frodokem_640_aes "" ON "OQS_ENABLE_KEM_FRODOKEM" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_frodokem_640_shake "" ON "OQS_ENABLE_KEM_FRODOKEM" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_frodokem_976_aes "" ON "OQS_ENABLE_KEM_FRODOKEM" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_frodokem_976_shake "" ON "OQS_ENABLE_KEM_FRODOKEM" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_frodokem_1344_aes "" ON "OQS_ENABLE_KEM_FRODOKEM" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_frodokem_1344_shake "" ON "OQS_ENABLE_KEM_FRODOKEM" OFF)

option(OQS_ENABLE_KEM_SIKE "" ON)
cmake_dependent_option(OQS_ENABLE_KEM_sike_p434 "" ON "OQS_ENABLE_KEM_SIKE" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_sike_p434_compressed "" ON "OQS_ENABLE_KEM_SIKE" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_sike_p503 "" ON "OQS_ENABLE_KEM_SIKE" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_sike_p503_compressed "" ON "OQS_ENABLE_KEM_SIKE" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_sike_p610 "" ON "OQS_ENABLE_KEM_SIKE" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_sike_p610_compressed "" ON "OQS_ENABLE_KEM_SIKE" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_sike_p751 "" ON "OQS_ENABLE_KEM_SIKE" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_sike_p751_compressed "" ON "OQS_ENABLE_KEM_SIKE" OFF)

option(OQS_ENABLE_KEM_SIDH "" ON)
cmake_dependent_option(OQS_ENABLE_KEM_sidh_p434 "" ON "OQS_ENABLE_KEM_SIDH" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_sidh_p434_compressed "" ON "OQS_ENABLE_KEM_SIDH" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_sidh_p503 "" ON "OQS_ENABLE_KEM_SIDH" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_sidh_p503_compressed "" ON "OQS_ENABLE_KEM_SIDH" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_sidh_p610 "" ON "OQS_ENABLE_KEM_SIDH" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_sidh_p610_compressed "" ON "OQS_ENABLE_KEM_SIDH" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_sidh_p751 "" ON "OQS_ENABLE_KEM_SIDH" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_sidh_p751_compressed "" ON "OQS_ENABLE_KEM_SIDH" OFF)

option(OQS_ENABLE_SIG_PICNIC "" ON)
cmake_dependent_option(OQS_ENABLE_SIG_picnic_L1_UR "" ON "OQS_ENABLE_SIG_PICNIC" OFF)
cmake_dependent_option(OQS_ENABLE_SIG_picnic_L1_FS "" ON "OQS_ENABLE_SIG_PICNIC" OFF)
cmake_dependent_option(OQS_ENABLE_SIG_picnic_L3_UR "" ON "OQS_ENABLE_SIG_PICNIC" OFF)
cmake_dependent_option(OQS_ENABLE_SIG_picnic_L3_FS "" ON "OQS_ENABLE_SIG_PICNIC" OFF)
cmake_dependent_option(OQS_ENABLE_SIG_picnic_L5_UR "" ON "OQS_ENABLE_SIG_PICNIC" OFF)
cmake_dependent_option(OQS_ENABLE_SIG_picnic_L5_FS "" ON "OQS_ENABLE_SIG_PICNIC" OFF)
cmake_dependent_option(OQS_ENABLE_SIG_picnic2_L1_FS "" ON "OQS_ENABLE_SIG_PICNIC" OFF)
cmake_dependent_option(OQS_ENABLE_SIG_picnic2_L3_FS "" ON "OQS_ENABLE_SIG_PICNIC" OFF)
cmake_dependent_option(OQS_ENABLE_SIG_picnic2_L5_FS "" ON "OQS_ENABLE_SIG_PICNIC" OFF)

option(OQS_ENABLE_SIG_QTESLA "" ON)
cmake_dependent_option(OQS_ENABLE_SIG_qTesla_p_I "" ON "OQS_ENABLE_SIG_QTESLA" OFF)
cmake_dependent_option(OQS_ENABLE_SIG_qTesla_p_III "" ON "OQS_ENABLE_SIG_QTESLA" OFF)

##### OQS_COPY_FROM_PQCLEAN_FRAGMENT_ADD_ENABLE_BY_ALG_START

option(OQS_ENABLE_KEM_CLASSIC_MCELIECE "" ON)
cmake_dependent_option(OQS_ENABLE_KEM_classic_mceliece_348864 "" ON "OQS_ENABLE_KEM_CLASSIC_MCELIECE" OFF)
set(OQS_ENABLE_KEM_classic_mceliece_348864_vec ON)

cmake_dependent_option(OQS_ENABLE_KEM_classic_mceliece_348864f "" ON "OQS_ENABLE_KEM_CLASSIC_MCELIECE" OFF)
set(OQS_ENABLE_KEM_classic_mceliece_348864f_vec ON)

cmake_dependent_option(OQS_ENABLE_KEM_classic_mceliece_460896 "" ON "OQS_ENABLE_KEM_CLASSIC_MCELIECE" OFF)
set(OQS_ENABLE_KEM_classic_mceliece_460896_vec ON)

cmake_dependent_option(OQS_ENABLE_KEM_classic_mceliece_460896f "" ON "OQS_ENABLE_KEM_CLASSIC_MCELIECE" OFF)
set(OQS_ENABLE_KEM_classic_mceliece_460896f_vec ON)

cmake_dependent_option(OQS_ENABLE_KEM_classic_mceliece_6688128 "" ON "OQS_ENABLE_KEM_CLASSIC_MCELIECE" OFF)
set(OQS_ENABLE_KEM_classic_mceliece_6688128_vec ON)

cmake_dependent_option(OQS_ENABLE_KEM_classic_mceliece_6688128f "" ON "OQS_ENABLE_KEM_CLASSIC_MCELIECE" OFF)
set(OQS_ENABLE_KEM_classic_mceliece_6688128f_vec ON)

cmake_dependent_option(OQS_ENABLE_KEM_classic_mceliece_6960119 "" ON "OQS_ENABLE_KEM_CLASSIC_MCELIECE" OFF)
set(OQS_ENABLE_KEM_classic_mceliece_6960119_vec ON)

cmake_dependent_option(OQS_ENABLE_KEM_classic_mceliece_6960119f "" ON "OQS_ENABLE_KEM_CLASSIC_MCELIECE" OFF)
set(OQS_ENABLE_KEM_classic_mceliece_6960119f_vec ON)

cmake_dependent_option(OQS_ENABLE_KEM_classic_mceliece_8192128 "" ON "OQS_ENABLE_KEM_CLASSIC_MCELIECE" OFF)
set(OQS_ENABLE_KEM_classic_mceliece_8192128_vec ON)

cmake_dependent_option(OQS_ENABLE_KEM_classic_mceliece_8192128f "" ON "OQS_ENABLE_KEM_CLASSIC_MCELIECE" OFF)
set(OQS_ENABLE_KEM_classic_mceliece_8192128f_vec ON)


option(OQS_ENABLE_KEM_KYBER "" ON)
cmake_dependent_option(OQS_ENABLE_KEM_kyber_512 "" ON "OQS_ENABLE_KEM_KYBER" OFF)
set(OQS_ENABLE_KEM_kyber_512_clean ON)
if (Linux STREQUAL CMAKE_SYSTEM_NAME) 
set(OQS_ENABLE_KEM_kyber_512_avx2 ON)
endif()

cmake_dependent_option(OQS_ENABLE_KEM_kyber_768 "" ON "OQS_ENABLE_KEM_KYBER" OFF)
set(OQS_ENABLE_KEM_kyber_768_clean ON)
if (Linux STREQUAL CMAKE_SYSTEM_NAME) 
set(OQS_ENABLE_KEM_kyber_768_avx2 ON)
endif()

cmake_dependent_option(OQS_ENABLE_KEM_kyber_1024 "" ON "OQS_ENABLE_KEM_KYBER" OFF)
set(OQS_ENABLE_KEM_kyber_1024_clean ON)
if (Linux STREQUAL CMAKE_SYSTEM_NAME) 
set(OQS_ENABLE_KEM_kyber_1024_avx2 ON)
endif()

cmake_dependent_option(OQS_ENABLE_KEM_kyber_512_90s "" ON "OQS_ENABLE_KEM_KYBER" OFF)
set(OQS_ENABLE_KEM_kyber_512_90s_clean ON)
if (Linux STREQUAL CMAKE_SYSTEM_NAME) 
set(OQS_ENABLE_KEM_kyber_512_90s_avx2 ON)
endif()

cmake_dependent_option(OQS_ENABLE_KEM_kyber_768_90s "" ON "OQS_ENABLE_KEM_KYBER" OFF)
set(OQS_ENABLE_KEM_kyber_768_90s_clean ON)
if (Linux STREQUAL CMAKE_SYSTEM_NAME) 
set(OQS_ENABLE_KEM_kyber_768_90s_avx2 ON)
endif()

cmake_dependent_option(OQS_ENABLE_KEM_kyber_1024_90s "" ON "OQS_ENABLE_KEM_KYBER" OFF)
set(OQS_ENABLE_KEM_kyber_1024_90s_clean ON)
if (Linux STREQUAL CMAKE_SYSTEM_NAME) 
set(OQS_ENABLE_KEM_kyber_1024_90s_avx2 ON)
endif()


option(OQS_ENABLE_KEM_LEDACRYPT "" ON)
cmake_dependent_option(OQS_ENABLE_KEM_ledacrypt_ledakemlt12 "" ON "OQS_ENABLE_KEM_LEDACRYPT" OFF)
set(OQS_ENABLE_KEM_ledacrypt_ledakemlt12_leaktime ON)

cmake_dependent_option(OQS_ENABLE_KEM_ledacrypt_ledakemlt32 "" ON "OQS_ENABLE_KEM_LEDACRYPT" OFF)
set(OQS_ENABLE_KEM_ledacrypt_ledakemlt32_leaktime ON)

cmake_dependent_option(OQS_ENABLE_KEM_ledacrypt_ledakemlt52 "" ON "OQS_ENABLE_KEM_LEDACRYPT" OFF)
set(OQS_ENABLE_KEM_ledacrypt_ledakemlt52_leaktime ON)


option(OQS_ENABLE_KEM_NEWHOPE "" ON)
cmake_dependent_option(OQS_ENABLE_KEM_newhope_512cca "" ON "OQS_ENABLE_KEM_NEWHOPE" OFF)
set(OQS_ENABLE_KEM_newhope_512cca_clean ON)

cmake_dependent_option(OQS_ENABLE_KEM_newhope_1024cca "" ON "OQS_ENABLE_KEM_NEWHOPE" OFF)
set(OQS_ENABLE_KEM_newhope_1024cca_clean ON)


option(OQS_ENABLE_KEM_NTRU "" ON)
cmake_dependent_option(OQS_ENABLE_KEM_ntru_hps2048509 "" ON "OQS_ENABLE_KEM_NTRU" OFF)
set(OQS_ENABLE_KEM_ntru_hps2048509_clean ON)

cmake_dependent_option(OQS_ENABLE_KEM_ntru_hps2048677 "" ON "OQS_ENABLE_KEM_NTRU" OFF)
set(OQS_ENABLE_KEM_ntru_hps2048677_clean ON)

cmake_dependent_option(OQS_ENABLE_KEM_ntru_hps4096821 "" ON "OQS_ENABLE_KEM_NTRU" OFF)
set(OQS_ENABLE_KEM_ntru_hps4096821_clean ON)

cmake_dependent_option(OQS_ENABLE_KEM_ntru_hrss701 "" ON "OQS_ENABLE_KEM_NTRU" OFF)
set(OQS_ENABLE_KEM_ntru_hrss701_clean ON)


option(OQS_ENABLE_KEM_SABER "" ON)
cmake_dependent_option(OQS_ENABLE_KEM_saber_lightsaber "" ON "OQS_ENABLE_KEM_SABER" OFF)
set(OQS_ENABLE_KEM_saber_lightsaber_clean ON)

cmake_dependent_option(OQS_ENABLE_KEM_saber_saber "" ON "OQS_ENABLE_KEM_SABER" OFF)
set(OQS_ENABLE_KEM_saber_saber_clean ON)

cmake_dependent_option(OQS_ENABLE_KEM_saber_firesaber "" ON "OQS_ENABLE_KEM_SABER" OFF)
set(OQS_ENABLE_KEM_saber_firesaber_clean ON)


option(OQS_ENABLE_KEM_THREEBEARS "" ON)
cmake_dependent_option(OQS_ENABLE_KEM_threebears_babybear "" ON "OQS_ENABLE_KEM_THREEBEARS" OFF)
set(OQS_ENABLE_KEM_threebears_babybear_clean ON)

cmake_dependent_option(OQS_ENABLE_KEM_threebears_babybear_ephem "" ON "OQS_ENABLE_KEM_THREEBEARS" OFF)
set(OQS_ENABLE_KEM_threebears_babybear_ephem_clean ON)

cmake_dependent_option(OQS_ENABLE_KEM_threebears_mamabear "" ON "OQS_ENABLE_KEM_THREEBEARS" OFF)
set(OQS_ENABLE_KEM_threebears_mamabear_clean ON)

cmake_dependent_option(OQS_ENABLE_KEM_threebears_mamabear_ephem "" ON "OQS_ENABLE_KEM_THREEBEARS" OFF)
set(OQS_ENABLE_KEM_threebears_mamabear_ephem_clean ON)

cmake_dependent_option(OQS_ENABLE_KEM_threebears_papabear "" ON "OQS_ENABLE_KEM_THREEBEARS" OFF)
set(OQS_ENABLE_KEM_threebears_papabear_clean ON)

cmake_dependent_option(OQS_ENABLE_KEM_threebears_papabear_ephem "" ON "OQS_ENABLE_KEM_THREEBEARS" OFF)
set(OQS_ENABLE_KEM_threebears_papabear_ephem_clean ON)


option(OQS_ENABLE_SIG_DILITHIUM "" ON)
cmake_dependent_option(OQS_ENABLE_SIG_dilithium_2 "" ON "OQS_ENABLE_SIG_DILITHIUM" OFF)
set(OQS_ENABLE_SIG_dilithium_2_clean ON)
if (Darwin STREQUAL CMAKE_SYSTEM_NAME)
set(OQS_ENABLE_SIG_dilithium_2_avx2 ON)
endif()
if (Linux STREQUAL CMAKE_SYSTEM_NAME)
set(OQS_ENABLE_SIG_dilithium_2_avx2 ON)
endif()

cmake_dependent_option(OQS_ENABLE_SIG_dilithium_3 "" ON "OQS_ENABLE_SIG_DILITHIUM" OFF)
set(OQS_ENABLE_SIG_dilithium_3_clean ON)
if (Darwin STREQUAL CMAKE_SYSTEM_NAME)
set(OQS_ENABLE_SIG_dilithium_3_avx2 ON)
endif()
if (Linux STREQUAL CMAKE_SYSTEM_NAME)
set(OQS_ENABLE_SIG_dilithium_3_avx2 ON)
endif()

cmake_dependent_option(OQS_ENABLE_SIG_dilithium_4 "" ON "OQS_ENABLE_SIG_DILITHIUM" OFF)
set(OQS_ENABLE_SIG_dilithium_4_clean ON)
if (Darwin STREQUAL CMAKE_SYSTEM_NAME)
set(OQS_ENABLE_SIG_dilithium_4_avx2 ON)
endif()
if (Linux STREQUAL CMAKE_SYSTEM_NAME)
set(OQS_ENABLE_SIG_dilithium_4_avx2 ON)
endif()


option(OQS_ENABLE_SIG_FALCON "" ON)
cmake_dependent_option(OQS_ENABLE_SIG_falcon_512 "" ON "OQS_ENABLE_SIG_FALCON" OFF)
set(OQS_ENABLE_SIG_falcon_512_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_falcon_1024 "" ON "OQS_ENABLE_SIG_FALCON" OFF)
set(OQS_ENABLE_SIG_falcon_1024_clean ON)


option(OQS_ENABLE_SIG_MQDSS "" ON)
cmake_dependent_option(OQS_ENABLE_SIG_mqdss_31_48 "" ON "OQS_ENABLE_SIG_MQDSS" OFF)
set(OQS_ENABLE_SIG_mqdss_31_48_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_mqdss_31_64 "" ON "OQS_ENABLE_SIG_MQDSS" OFF)
set(OQS_ENABLE_SIG_mqdss_31_64_clean ON)


option(OQS_ENABLE_SIG_RAINBOW "" ON)
cmake_dependent_option(OQS_ENABLE_SIG_rainbow_Ia_classic "" ON "OQS_ENABLE_SIG_RAINBOW" OFF)
set(OQS_ENABLE_SIG_rainbow_Ia_classic_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_rainbow_Ia_cyclic "" ON "OQS_ENABLE_SIG_RAINBOW" OFF)
set(OQS_ENABLE_SIG_rainbow_Ia_cyclic_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_rainbow_Ia_cyclic_compressed "" ON "OQS_ENABLE_SIG_RAINBOW" OFF)
set(OQS_ENABLE_SIG_rainbow_Ia_cyclic_compressed_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_rainbow_IIIc_classic "" ON "OQS_ENABLE_SIG_RAINBOW" OFF)
set(OQS_ENABLE_SIG_rainbow_IIIc_classic_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_rainbow_IIIc_cyclic "" ON "OQS_ENABLE_SIG_RAINBOW" OFF)
set(OQS_ENABLE_SIG_rainbow_IIIc_cyclic_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_rainbow_IIIc_cyclic_compressed "" ON "OQS_ENABLE_SIG_RAINBOW" OFF)
set(OQS_ENABLE_SIG_rainbow_IIIc_cyclic_compressed_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_rainbow_Vc_classic "" ON "OQS_ENABLE_SIG_RAINBOW" OFF)
set(OQS_ENABLE_SIG_rainbow_Vc_classic_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_rainbow_Vc_cyclic "" ON "OQS_ENABLE_SIG_RAINBOW" OFF)
set(OQS_ENABLE_SIG_rainbow_Vc_cyclic_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_rainbow_Vc_cyclic_compressed "" ON "OQS_ENABLE_SIG_RAINBOW" OFF)
set(OQS_ENABLE_SIG_rainbow_Vc_cyclic_compressed_clean ON)


option(OQS_ENABLE_SIG_SPHINCS "" ON)
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_128f_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_haraka_128f_robust_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_128f_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_haraka_128f_simple_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_128s_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_haraka_128s_robust_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_128s_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_haraka_128s_simple_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_192f_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_haraka_192f_robust_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_192f_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_haraka_192f_simple_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_192s_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_haraka_192s_robust_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_192s_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_haraka_192s_simple_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_256f_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_haraka_256f_robust_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_256f_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_haraka_256f_simple_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_256s_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_haraka_256s_robust_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_256s_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_haraka_256s_simple_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_128f_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_sha256_128f_robust_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_128f_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_sha256_128f_simple_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_128s_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_sha256_128s_robust_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_128s_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_sha256_128s_simple_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_192f_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_sha256_192f_robust_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_192f_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_sha256_192f_simple_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_192s_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_sha256_192s_robust_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_192s_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_sha256_192s_simple_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_256f_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_sha256_256f_robust_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_256f_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_sha256_256f_simple_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_256s_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_sha256_256s_robust_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_256s_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_sha256_256s_simple_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_128f_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_shake256_128f_robust_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_128f_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_shake256_128f_simple_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_128s_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_shake256_128s_robust_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_128s_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_shake256_128s_simple_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_192f_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_shake256_192f_robust_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_192f_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_shake256_192f_simple_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_192s_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_shake256_192s_robust_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_192s_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_shake256_192s_simple_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_256f_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_shake256_256f_robust_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_256f_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_shake256_256f_simple_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_256s_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_shake256_256s_robust_clean ON)

cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_256s_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
set(OQS_ENABLE_SIG_sphincs_shake256_256s_simple_clean ON)

##### OQS_COPY_FROM_PQCLEAN_FRAGMENT_ADD_ENABLE_BY_ALG_END
