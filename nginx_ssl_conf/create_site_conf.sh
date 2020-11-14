#!/bin/bash

PATHDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
sudo cp $PATHDIR/site_nginx.conf /etc/nginx/sites-available/site.com
