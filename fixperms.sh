#!/bin/bash

sudo chown -R "$(id -u):$(id -g)" *-data
chmod -R +rX *-data
