#!/bin/sh

# Execute setup file
cd "$(dirname "${BASH_SOURCE[0]}")" \
    || exit 1
. "./src/setup/main.sh"

# Delete this file once complete
rm -f ${BASH_SOURCE[0]}
