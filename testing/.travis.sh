#!/bin/bash

# Don't call this script yourself, this is for Travis CI!

cd "$(dirname "$0")"/..

testing/test_all.sh
exitCode=$?

exit $exitCode
