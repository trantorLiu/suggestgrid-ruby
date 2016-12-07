#!/bin/bash

set -euf -o pipefail

git clone https://${GITHUB_USERNAME}:${GITHUB_PASSWORD}@github.com/suggestgrid/suggestgrid-ruby-test-proxy.git ${PROXY_PATH}
git -C ${PROXY_PATH} checkout ${CIRCLE_BRANCH}
