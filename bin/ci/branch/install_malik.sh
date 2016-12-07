#!/bin/bash

set -euf -o pipefail

git clone https://${GITHUB_USERNAME}:${GITHUB_PASSWORD}@github.com/suggestgrid/malik.git ${MALIK_PATH}
cd ${MALIK_PATH}
git checkout ${CIRCLE_BRANCH}
mkdir node_modules
npm install
