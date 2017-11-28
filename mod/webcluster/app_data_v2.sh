#!/bin/bash
sudo apt-get update; sudo apt-get install -y nodejs npm
mkdir ~/app && pushd $_ && wget "https://s3.eu-central-1.amazonaws.com/wip-tf-state-080817/app/app.zip"
tar-zxf app.zip && rm -f $_
sudo npm install express && nodejs app.js &

sleep 10;

output=$(curl "http://localhost:9090")

if [[ $output == *"Found"* ]]; then
  echo "OMG OMG SUCCESS!!!1!"
else
  killall nodejs && pushd /home/ubuntu/app && sudo npm install express && nodejs app.js &
fi
