#!/bin/sh -l

echo "Hello $1"
pwd
ls -l
java -jar /src/main/java/App.java "$1"