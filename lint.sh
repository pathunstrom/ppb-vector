#!/usr/bin/env bash
source .common.sh

if [[ "${PYTHON-x}" =~ pypy-* ]]; then
    echo "Skipping linting under pypy" >&2
    exit 0
fi

run ${PY} -m mypy ppb_vector tests