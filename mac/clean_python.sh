#!/usr/bin/evn bash

VERSION=$1

LIB_PATH=/Library/Frameworks/Python.framework/Versions/$VERSION
APP_PATH=/Applications/Python\ $VERSION

error_exit() {
    echo $1 1>&2
    exit 1
}

echo 'Removing Python' $VERSION '...'

if [[ -d $LIB_PATH ]]; then
    echo 'Cleaning ' $LIB_PATH
    rm -rf $LIB_PATH || error_exit 'Failed to remove '$LIB_PATH' for Python '$VERSION.
fi

if [[ -d $APP_PATH ]]; then
    echo 'Cleaning ' $APP_PATH
    rm -rf "$APP_PATH" || error_exit 'Failed to remove '$APP_PATH' for Python '$VERSION.
fi

if test ! -z "$(ls /usr/local/bin | grep "$LIB_PATH")"; then
    echo 'Cleaning links...'
    cd /usr/local/bin/
    (ls -l /usr/local/bin | grep "$LIB_PATH" | awk '{print $9}' | tr -d @ | xargs rm) || error_exit 'Failed to remove Python '$VERSION.
fi

echo 'Python '$VERSION' is removed.'

exit