#!/bin/bash
echo -n "Task name and number: "
read task
echo -n "Branch name: "
read branch
branch_convert_to_lowercase=`echo $branch | awk '{print tolower($0)}'`
task_convert_to_uppercase=`echo $task | awk '{print toupper($0)}'`
IFS=' '
read -ra arr <<< "$branch_convert_to_lowercase" 
concatenate_elements=$(IFS=- ; echo "${arr[*]}")
git checkout -b "$task_convert_to_uppercase-$concatenate_elements"
