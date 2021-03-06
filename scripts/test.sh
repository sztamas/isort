#!/bin/bash
set -euxo pipefail

./scripts/lint.sh
poetry run pytest tests/unit/ -s --cov=isort/ --cov-report=term-missing ${@-}
poetry run coverage html
