#!/bin/bash
# my-masters-thesis set-pipeline.sh

fly -t ci set-pipeline -p my-masters-thesis -c pipeline.yml --load-vars-from ../../../.credentials.yml
