#! /usr/bin/env bash

python_versions=(
    "python3.10" 
    "python3.11"
)
for candidate in "${python_versions[@]}"; do
    if which "$candidate"; then version="$candidate"; fi
done


if [[ -z "$version" ]]; then
    echo "Supported python version not found. Please install python 3.10 or python 3.11."
    exit 1
fi    

echo "$version detected. Using this to create venv"

if [[ -d "venv" ]]; then
    echo "venv already exists. We'll update the venv with the latest packages. Please delete it if you want to start over."
else
    $version -m venv venv
fi

source "venv/bin/activate"
pip3 install -r requirements.txt