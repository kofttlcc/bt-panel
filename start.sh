#!/bin/bash
cd /www/server/panel \
&& python tools.pyc panel Abc123456 admin \
&& systemctl start bt
