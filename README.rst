Deploy bokeh server with Flask and nginx
========================================

This example shows how to embed a bokeh server app in Flask
and to deploy it with nginx.

In docker-compose.yml, the host port 80 is mapped to the container port 8081.
These example should work fine.


To test, run::

    $ docker-compose up

Go to http://localhost
