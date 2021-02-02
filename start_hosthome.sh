#!/usr/bin/env bash

cd projectos
cd $1

virtualenv hosthome_env
cd $1"\\"hosthome_env
bin/activate
cd ..

if [ -f requirements.txt ]
then
    pip install -r requirements.txt
fi
