#!/bin/bash -e

pip install -r /workspace/requirements.txt

exec "$@"
