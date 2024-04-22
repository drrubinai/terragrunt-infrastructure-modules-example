#!/bin/bash

set -e

#echo "Hello, World" > index.html
eval echo \"Hello from $(hostname)\" > index.html
nohup busybox httpd -f -p "${server_port}" &
