#!/bin/bash

echo "Building the project..."
# Install dependencies
pip install -r requirements.txt

# Run tests
python .github/scripts/tests.py
