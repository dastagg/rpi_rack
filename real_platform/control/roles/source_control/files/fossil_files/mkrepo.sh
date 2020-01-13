#!/bin/bash

if [ -z "$1" ]; then
  echo usage: $0 repository
  exit
fi
REPO=$1

fossil init $REPO.fsl
fossil config import ticket.config -R $REPO.fsl

chown www-data:www-data $REPO.fsl


