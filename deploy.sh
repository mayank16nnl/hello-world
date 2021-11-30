#!/bin/bash

echo "Start deploy"
cd ~/circleci-aws
git pull
npm i
npm run build 
pm2 stop build/server
pm2 start build/server
echo "Deploy end"
