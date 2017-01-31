#!/usr/bin/env bash
#docker build -t afdrift/ubuntu:latest .
echo ". \$NVM_DIR/nvm.sh && nvm ls" | docker run -i --rm afdrift/ubuntu:latest /bin/bash
