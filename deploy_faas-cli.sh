#!/bin/sh
echo "Installing faas-cli.."
curl -sSL https://cli.openfaas.com | sudo sh

if ! [ -x "$(command -v faas-cli)" ]; then
  echo 'an error occurred during the installation of faas-cli' >&2
  exit 1
fi

echo "Done !"

faas-cli -h
