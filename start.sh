#!/bin/bash -e

# install GlobaLeaks on first run
if [ test -e /tmp/install-globaleaks.sh ]; then
    /tmp/install-globaleaks.sh \
        || ( echo "Error: start with option --privileged" && exit 1 )
    rm /tmp/install-globaleaks.sh
    sed -i -e 's,APPARMOR_SANDBOXING=1,APPARMOR_SANDBOXING=0,' \
        -e 's,NETWORK_SANDBOXING=1,NETWORK_SANDBOXING=0,' \
        /etc/default/globaleaks
fi

echo "**** Starting GlobaLeaks ..."
service tor restart
service globaleaks restart
sleep infinity
