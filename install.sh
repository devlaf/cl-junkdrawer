#!/bin/bash

# Because quicklisp is for real things

config_dir="~/.config/common-lisp/source-registry.conf.d"
this_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir -p $config_dir
echo "(:tree \"$this_dir\")" > $config_dir/50-cl-junkdrawer.conf

