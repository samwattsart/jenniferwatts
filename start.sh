#!/bin/bash

echo -e "Visit http://localhost:8080 to view your site!
Use control-c to stop this process.\n"

python -m SimpleHTTPServer ${1:-8080}