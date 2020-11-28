#!/bin/bash
echo -n "Create branch: "
read str
converttolowercase=`echo $str | awk '{print tolower($0)}'`
IFS=' '
read -ra arr <<< "$converttolowercase" 
concatenatedelements=$(IFS=- ; echo "${arr[*]}")
git checkout -b "$concatenatedelements"
