#!/bin/bash
cd /www/server/panel \
&& python tools.pyc panel Abc123456 admin \
&& service bt start
