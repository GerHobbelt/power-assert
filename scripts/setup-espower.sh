#! /bin/bash
#

cd $(dirname $0)/..

for i in $(find ./test/tobe_instrumented -name '*.js'); do 
	node_modules/.bin/babel $i > ./espowered_tests/tobe_instrumented/$(basename $i)
done
