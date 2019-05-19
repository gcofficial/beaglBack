#!/bin/bash
npm i
npm run test
chmod 600 ./.travis/beaglBack
ssh-add ./.travis/beaglBack
ssh $SSH_HOST <<EOF
    cd beaglBack
    rm -rf ..?* .[!.]* *
    eval `ssh-agent -s`
    pwd
    cat ~/.ssh/beaglBack
    ssh-add -k ~/.ssh/beaglBack
    git init
    git remote add origin git@github.com:gcofficial/beaglBack.git
    git pull origin master
    npm i
    pm2 delete all
    pm2 start npm --name "beaglBack" -- run start
EOF