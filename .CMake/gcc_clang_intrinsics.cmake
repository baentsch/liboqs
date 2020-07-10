# SPDX-License-Identifier: MIT

try_run(RUN_RESULT COMPILE_RESULT
        "${CMAKE_BINARY_DIR}" "${PROJECT_SOURCE_DIR}/.CMake/detect_gcc_clang_intrinsics.c"
if(CMAKE_SYSTEM_PROCESSOR MATCHES "ppc64le")
        COMPILE_DEFINITIONS -mcpu=native
else()
        COMPILE_DEFINITIONS -march=native
endif()
        RUN_OUTPUT_VARIABLE RUN_OUTPUT)
if(NOT RUN_RESULT EQUAL 0)
     message(FATAL_ERROR ".CMake/detect_gcc_clang_intrinsics.c returned exit code/output: " ${RUN_RESULT} ${RUN_OUTPUT})
endif()
foreach(CPU_EXTENSION ${RUN_OUTPUT})
    set(OQS_USE_${CPU_EXTENSION}_INSTRUCTIONS ON)
endforeach()
if(OQS_USE_AVX512BW_INSTRUCTIONS AND
   OQS_USE_AVX512DQ_INSTRUCTIONS AND
   OQS_USE_AVX512F_INSTRUCTIONS)
    set(OQS_USE_AVX512_INSTRUCTIONS ON)
endif()
