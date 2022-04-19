#!/bin/bash/
sed -r '/^\s*$/d' $1

awk '!seen[$0]++' $1