#!/bin/bash

set -euxo pipefail

if [ ! -f /home/rhel/facts.yml ]; then
    echo "No file was found at /home/rhel/facts.yml" >> /tmp/progress.log
fi

if ! grep "facts" /home/rhel/facts.yml; then
    echo "The facts.yml playbook doesn't contain the facts module" >> /tmp/progress.log
fi

if ! grep "debug" /home/rhel/facts.yml; then
    echo "The facts.yml playbook doesn't contain the debug module" >> /tmp/progress.log
fi