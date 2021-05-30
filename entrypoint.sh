#!/bin/sh

CONFIG_DIR=${CONFIG_DIR:-/etc/debmirror}

echo "Config Directory: $CONFIG_DIR"

for config_file in $CONFIG_DIR/*; do
    echo "Using $config_file"
    debmirror --config-file $config_file
done
