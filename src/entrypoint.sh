#!/bin/sh

echo "password:" ${PASSWORD}
echo "m:" ${M}

ssserver -p 443 -k ${PASSWORD} -m ${M} -vv