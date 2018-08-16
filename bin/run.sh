#!/bin/bash

#jekyll serve -P 8080 --baseurl /onex

pushd docs
#python -m SimpleHTTPServer 8001
python3 -m http.server 8001
popd