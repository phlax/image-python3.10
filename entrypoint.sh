#!/bin/bash -e

PIP_REQUIREMENTS="${PIP_REQUIREMENTS:-/workspace/requirements.txt}"

if [[ -e "$PIP_REQUIREMENTS" ]]; then
    pip install -r "$PIP_REQUIREMENTS"
elif [[ -n "$PIP_REQUIREMENTS" ]]; then
    echo "requirements file not found: ${PIP_REQUIREMENTS}"
fi

exec "$@"
