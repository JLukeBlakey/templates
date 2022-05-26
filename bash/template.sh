#!/bin/bash

set -eo pipefail

usage() {
    echo "usage: $0 -f FLAG [ -o OPTIONAL_FLAG ]"
    exit 2
}

while getopts ':f:o' opt; do
    case "$opt" in
        f) FLAG="$OPTARG" ;;
        o) OPTIONAL_FLAG="$OPTARG" ;;
        \?) usage ;;
        :) usage ;;
    esac
done

# ensure $FLAG is defined
[ "$FLAG" ] || usage
