#!/bin/bash
npm i
npm run test
chmod 600 ./.travis/beaglBack
cat ./.travis/beaglBack
ssh-add ./.travis/beaglBack
ssh $SSH_HOST <<EOF
    echo "Hello world"
EOF