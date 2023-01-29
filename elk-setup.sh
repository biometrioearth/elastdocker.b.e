#!/bin/bash

#----------- limits on mmapfs ----------------------------#
sudo sysctl -w vm.max_map_count=262144 && \\

#----------- Cloning the repo ----------------------------#
git clone https://github.com/biometrioearth/elastdocker.b.e.git && \\

#----------- Create the certificates --------------------#
cd elastdocker.b.e && \\
make setup && \\

#----------- Run the containers --------------------#
docker-compose up -d

