#!/bin/bash
cd /www/server/panel \
&& python tools.pyc panel Abc_123456 admin \
&& service bt start
