#!/bin/bash
cd beaglBack
rm -rf ..?* .[!.]* *
pwd
cat ~/.ssh/beaglBack
eval `ssh-agent -s`
ssh-add -k ~/.ssh/beaglBack
git init
git remote add origin git@github.com:gcofficial/beaglBack.git
git pull origin master
npm i
pm2 delete all
pm2 start npm --name "beaglBack" -- run start