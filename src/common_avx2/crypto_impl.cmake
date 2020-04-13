# The *_IMPL variables are absolute paths
# as they are needed in the tests/ sub-directory.

set(SHA3_IMPL_AVX2 ${CMAKE_CURRENT_LIST_DIR}/sha3/sha3_c.c)
if(OQS_USE_AVX2_INSTRUCTIONS AND OQS_USE_AES_INSTRUCTIONS)
    set(SHA3_IMPL_AVX2 ${SHA3_IMPL_AVX2} ${CMAKE_CURRENT_LIST_DIR}/sha3/sha3x4.c)
    add_compile_options(-mavx2 -maes)
endif()
