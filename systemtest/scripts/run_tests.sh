#!/bin/sh
TESTCASE=$1

if [ -n "$TESTCASE" ]; then
    EXTRA_ARGS="-Dtest=$TESTCASE"
fi

mvn verify -pl systemtest -Djava.net.preferIPv4Stack=true -DtrimStackTrace=false $EXTRA_ARGS
