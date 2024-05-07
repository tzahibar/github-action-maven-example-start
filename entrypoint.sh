#!/bin/sh -l

echo "Hello $1"
java -jar src/main/java/App.java "$1"