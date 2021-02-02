#!/usr/bin/env bash

echo $1

cd projectos
cd $1

virtualenv hosthome_env
cd $1"\\"hosthome_env
bin/activate
cd ..

if [ -f $1"\\"requirements.txt ]
then
    pip install -r $1"\\"requirements.txt --no-python-version-warning --quiet --no-color
fi
