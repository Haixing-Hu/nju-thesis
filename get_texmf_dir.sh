#!/bin/bash

###############################################################################
#
#   A shell script used to get the local texmf directory.
#
# 	Copyright (C) 2013 Haixing Hu,
#   Department of Computer Science and Technology, Nanjing University.
#
#   Home Page of the Project: https://github.com/Haixing-Hu/nju-thesis
#
###############################################################################

TEXMF_DIR=$(kpsewhich --show-path=ls-R | tr : '\n' | grep 'texmf-local' | head -n 1);
if [[ ${TEXMF_DIR} == "" ]]; then
    TEXMF_DIR=$(kpsewhich --show-path=ls-R | tr : '\n' | grep 'local' | head -n 1);
fi
if [[ ${TEXMF_DIR} == "" ]]; then
    TEXMF_DIR=$(kpsewhich --show-path=ls-R | tr : '\n' | head -n 1);
fi
echo ${TEXMF_DIR};
