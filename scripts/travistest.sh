#!/bin/bash

mkdir build && cd build && source ~/.bashrc && cmake -GNinja .. && ninja run_tests