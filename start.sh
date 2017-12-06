#!/bin/bash
cd /www/server/panel \
&& python tools.pyc panel 123456 \
&& service bt start
