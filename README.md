# Globaleak Whistleblowing Platform

Ports:
 - TOR: 9040, 9050
   To be routed to the Internet.
 - Optional (must be configured): http://localhost:8082 
   Not to be exposed outside!

Volumes:
 - /var/globaleak
 - /etc

Run with option `--priviledged`

Example:
        docker create --name globaleaks-volumes mwaeckerlin/globaleaks
        docker run -d --restart-always --name globaleaks \
            --volumes-from globaleaks-volumes \
            -p 8082:8082 -p 9040:9040 -p 9050:9050 \
            --priviledged \
            mwaeckerlin/globaleaks
