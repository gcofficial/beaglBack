#!/bin/bash
npm i
npm run test
chmod 600 ./.travis/beaglBack
ssh-add ./.travis/beaglBack
ssh $SSH_HOST <<EOF
    cd beaglBack
    rm -rf ..?* .[!.]* *
    eval `ssh-agent -s`
    ssh-add -k beaglBack
    git pull origin master
    npm i
    pm2 delete all
    pm2 start npm --name "beaglBack" -- run start
EOF