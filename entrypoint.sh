#!/bin/sh -l

echo "Hello $1"
pwd
ls -l
java -jar /app.jar "$1"