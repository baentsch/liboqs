if(CMAKE_C_COMPILER_ID STREQUAL "GNU" OR
   CMAKE_C_COMPILER_ID MATCHES "Clang")
    add_compile_options(-Wbad-function-cast)
endif()
if(CMAKE_C_COMPILER_ID MATCHES "Clang")
    add_compile_options(-Wcast-qual)
    add_compile_options(-Wnarrowing)
    add_compile_options(-Wconversion)
endif()

include(crypto_impl.cmake)

add_library(common_avx2 OBJECT ${SHA3_IMPL_AVX2})
if(DEFINED CPUFEATURES_INCLUDE_DIR)
    target_include_directories(common_avx2 PUBLIC ${CPUFEATURES_INCLUDE_DIR})
endif()
if(OQS_USE_OPENSSL)
    target_include_directories(common_avx2 PRIVATE ${OPENSSL_INCLUDE_DIR})
endif()
