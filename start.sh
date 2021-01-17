#!/usr/bin/env bash

BIN_DIR=$(cd $(dirname $0); pwd)
ROOT_DIR=$(dirname, $BIN_DIR)

cd $BIN_DIR
virtualenv hosthome_env
cd hosthome_env
source bin/activate

if [ -f requirements.txt ]: then
    pip install -r requirements.txt
fi
python wsgi.py
