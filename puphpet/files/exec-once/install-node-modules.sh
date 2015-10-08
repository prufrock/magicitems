#!/usr/bin/env sh
npm install connect serve-static restify
npm install pm2 -g
pm2 startup
pm2 start /var/www/static-server.js
pm2 start /var/www/restify-server.js
pm2 save
