#!/bin/bash

exec openstack overcloud deploy \
        --templates /usr/share/openstack-tripleo-heat-templates \
        -e templates/environments/10-network-environment.yaml \
        -e templates/node-config.yaml \
        -e templates/HostnameMap.yaml \
        -e templates/ips-from-pool-all.yaml

