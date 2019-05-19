#!/bin/bash
npm i
npm run test
chmod 600 ./beaglBack
cat ./beaglBack
ssh-add ./beaglBack
ssh $SSH_HOST <<EOF
    echo "Hello world"
EOF