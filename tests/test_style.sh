#!/bin/bash
# SPDX-License-Identifier: MIT

find src tests -name '*.[ch]' | grep -v '/external/' | grep -v 'kem.*/pqclean_' | grep -v 'sig.*/pqclean_' | grep -v 'sig.*/ref_dilithium' | xargs astyle --dry-run --options=.astylerc
