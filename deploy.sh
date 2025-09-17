#!/usr/bin/env bash

scp -r content/* root@vds.io:/var/www/html/vds.io/good
mustache nginx/vds.io.good.json nginx/vds.io.good.mustache vds.io.good.conf
scp vds.io.good.conf root@vds.io:/etc/nginx/sites-available/vds.io.good

