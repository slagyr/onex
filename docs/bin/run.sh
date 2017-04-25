#!/bin/bash

#jekyll serve -P 8080 --baseurl /onex

pushd docs
python -m SimpleHTTPServer 8001 &
popd