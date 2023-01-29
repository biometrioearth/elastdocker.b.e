#!/bin/bash

#----------- limits on mmapfs ----------------------------#
sudo sysctl -w vm.max_map_count=262144 && \\

#----------- Create the certificates --------------------#
make setup && \\

#----------- Run the containers --------------------#
docker-compose up -d

