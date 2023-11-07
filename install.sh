#!/bin/bash

echo "Installing VSCode extensions..."
scripts/vsc.sh

echo "Installing some IntelliJ plugins..."
scripts/intellij.sh

echo "Importing IDE settings..."
mkdir -p ~/.config/JetBrains/RemoteDev-IU/_home_owner_src_credit_card/
unzip settings.zip -d ~/.config/JetBrains/RemoteDev-IU/_home_owner_src_credit_card/

echo "Installing fish shell.."
scripts/install_fish.sh
