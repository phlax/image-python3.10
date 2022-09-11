#!/bin/bash -e

PIP_REQUIREMENTS="${PIP_REQUIREMENTS:-/workspace/requirements.txt}"

if [[ -n "$PIP_REQUIREMENTS" ]]; then
    pip install -r "$PIP_REQUIREMENTS"
fi

exec "$@"
