#!/usr/bin/env bash

cd projectos
cd $2

virtualenv hosthome_env
cd hosthome_env
bin/activate
cd ..

if [ -f requirements.txt ]
then
    pip install -r requirements.txt
fi
