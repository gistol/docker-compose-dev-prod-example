#!/bin/bash

set -e

echo "Production build..."
mkdir dist
echo "We are in $ENV" > dist/index.html
