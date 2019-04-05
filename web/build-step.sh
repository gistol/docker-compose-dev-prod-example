#!/bin/bash

if [ "$ENV" = "prod" ]
then
  echo "Production build..."
  echo "We are in $ENV" > build.txt
else
  echo "Not doing build in dev :)"
fi
