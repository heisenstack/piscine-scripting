#!/bin/bash
export MY_MESSAGE="Hello World"
export MY_NUM=100
export MYPI=3.142

printenv | grep -E "^MY_"