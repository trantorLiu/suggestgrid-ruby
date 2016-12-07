#!/bin/bash

set -euf -o pipefail

wget https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-${ELASTICSEARCH_VERSION}.tar.gz
mkdir ${ELASTICSEARCH_DIR}
tar -xvf elasticsearch-${ELASTICSEARCH_VERSION}.tar.gz --strip-components 1 --directory ${ELASTICSEARCH_DIR}
${ELASTICSEARCH_DIR}/bin/plugin install delete-by-query

# Malik and its elasticsearch config must be present at ${MALIK_PATH}
cp ${MALIK_PATH}/config/elasticsearch.yml ${ELASTICSEARCH_DIR}/config/elasticsearch.yml
