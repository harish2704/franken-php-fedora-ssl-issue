#!/bin/sh

RELEASE=1.7.0
ARCH=`arch`

wget -c "https://github.com/php/frankenphp/releases/download/v$RELEASE/frankenphp-linux-$ARCH" -O frankenphp
chmod a+x ./frankenphp
