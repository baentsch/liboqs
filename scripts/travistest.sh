#!/bin/bash

# SPDX-License-Identifier: MIT

export SKIP_TESTS=style,doxygen
mkdir build && cd build && source ~/.bashrc && cmake -GNinja .. && ninja run_tests
