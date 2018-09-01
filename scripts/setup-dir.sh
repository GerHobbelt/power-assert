#! /bin/bash
#

cd $(dirname $0)/..

mkdir -p ./build 
mkdir -p ./espowered_tests/tobe_instrumented  
cp -r test/not_tobe_instrumented/ ./espowered_tests/not_tobe_instrumented/
