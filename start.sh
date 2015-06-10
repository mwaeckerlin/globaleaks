#!/bin/bash -e

# install GlobaLeaks on first run
! test -e /tmp/install-globaleaks.sh \
    || ( /tmp/install-globaleaks.sh && rm /tmp/install-globaleaks.sh ) \
    || ( echo "Error: start with option --priviledged" && exit 1 )

echo "**** Starting GlobaLeaks ..."
service globaleaks start
sleep infinity
