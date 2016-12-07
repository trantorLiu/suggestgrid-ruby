#!/bin/bash

set -euf -o pipefail

git clone https://${GITHUB_USERNAME}:${GITHUB_PASSWORD}@github.com/suggestgrid/kirk.git ${KIRK_PATH}
cd ${KIRK_PATH}
git checkout ${CIRCLE_TAG}
lein do clean, install
