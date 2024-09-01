#!/bin/sh
echo $FLAG > /flag;
/etc/init.d/xinetd start;
sleep infinity;
