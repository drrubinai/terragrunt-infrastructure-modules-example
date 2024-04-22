#!/bin/bash

set -e

eval echo \"Hello from $(hostname)\" > index.html
nohup busybox httpd -f -p "${server_port}" &
