#!/bin/sh -l

echo "Hello $1"
pwd
java -jar /src/main/java/App.java "$1"