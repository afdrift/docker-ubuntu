#!/usr/bin/env bash

TS=`date`
docker build --build-arg CACHEBUST="$TS" -t afdrift/ubuntu:latest .

