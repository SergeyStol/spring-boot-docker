#!/bin/sh

cd as
result=$?
if [ result != 0 ] ; then
    echo "$result"
fi
echo "Hello!"