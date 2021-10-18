Deploy bokeh server with Flask and nginx
========================================

This example tries to show how to embed a bokeh server app in Flask
and to deploy it with nginx.

In docker-compose.yml, the host port 8081 is mapped to the same container port 8081.
The example works fine. See test_ok.png.

In docker-compose.port_forwarding.yml, the host port 8081 is mapped to the
container port 80. This is to test port forwarding.
The script autoload.js tries to load js files from localhost:80 instead of
localhost:8081 and of course it fails. See test_nok.png.


To test, run::

    $ docker-compose up

Or::

    $ docker-compose -f docker-compose.port_forwarding.yml up

    
Go to http://localhost:8081/
