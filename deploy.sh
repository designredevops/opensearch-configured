#!/bin/bash

set -euo pipefail

ADMIN_PASSWORD="tMLSpjztxScGpVSazrYv6GrFB2GGhZjMr74h9JC4kuWWcpXWKh"
KIBANASERVER_PASSWORD="tMLSpjztxScGpVSazrYv6GrFB2GGhZjMr74h9JC4kuWWcpXWKh"
LOGSTASH_PASSWORD="tMLSpjztxScGpVSazrYv6GrFB2GGhZjMr74h9JC4kuWWcpXWKh"

ansible-playbook -i inventories/opensearch/hosts \
opensearch.yml \
--extra-vars "admin_password=${ADMIN_PASSWORD} kibanaserver_password=${KIBANASERVER_PASSWORD} logstash_password=${LOGSTASH_PASSWORD}" \
--become \
--ask-become-pass
