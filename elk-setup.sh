#!/bin/bash

#----------- limits on mmapfs ----------------------------#
sudo sysctl -w vm.max_map_count=262144 && \\

#----------- Cloning the repo ----------------------------#
git clone https://github.com/biometrioearth/elastdocker.git && \\


#----------- Move pufferfish files into logstash dir -----#
# rsync -avz /path/ elastdocker/logstash/

#----------- Create the certificates --------------------#
cd elastdocker && \\
make setup && \\

#----------- Run the containers --------------------#
docker-compose up -d

