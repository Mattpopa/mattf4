#!/bin/bash
sudo apt-get update; sudo apt-get install -y nodejs npm
pushd /home/ubuntu 
sudo -u ubuntu wget "https://s3.eu-central-1.amazonaws.com/wip-tf-state-080817/app/app.zip"
tar -zxf app.zip && pushd app
npm install express && nodejs app.js &

sleep 10;

output=$(curl "http://localhost:9090")

if [[ $output == *"Found"* ]]; then
  echo "OMG OMG SUCCESS!!!1!"
else
  sudo killall nodejs && pushd /home/ubuntu/app && sudo -u ubuntu npm install express && nodejs app.js &
fi
