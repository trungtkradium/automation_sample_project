#!/bin/bash

set -e

FLUTTER_VERSION="2.8.1"

cd
git clone https://github.com/flutter/flutter.git -b stable || true

# Only export if not exist
touch $HOME/.zshrc
PATH_STR=$(cat $HOME/.zshrc)
if [[ $PATH_STR != *"flutter/bin:"* ]]
then
    echo "Exporting path......."
    echo "export PATH=$HOME/flutter/bin:\$PATH" >> $HOME/.zshrc
fi

source $HOME/.zshrc

cd flutter/
git checkout ${FLUTTER_VERSION}

flutter doctor