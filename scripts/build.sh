#! /bin/bash
#

cd $(dirname $0)/..

mkdir -p ./build 
echo "Prune..."
npm prune 
echo "Dedupe..."
npm dedupe 
echo "Browserify + Dereserve + Derequire..."
node_modules/.bin/browserify -p licensify --global-transform package-json-filterify --standalone assert ./index.js \
	| node_modules/.bin/dereserve \
	| node_modules/.bin/derequire > build/power-assert.js
echo "OK (done)"
