@ECHO off   
if /I %1 == default goto :default
if /I %1 == start goto :start
if /I %1 == stop goto :stop
if /I %1 == restart goto :restart


REM ---------- Sections which can only be ran on packager Jenkins node -----------
:default
echo DEFAULT
goto :eof

:help
ECHO start: Start docker containers 
ECHO stop:  Stop docker containers
ECHO restart:  Stop, re-build and start docker containers
goto :eof

:start
docker-compose up -d 
goto :eof

:stop 
docker-compose down
goto :eof

:restart 
docker-compose down
docker rmi flask
docker rmi bokeh-serve
docker-compose up -d 
goto :eof

REM -----------------------------------------------------------------------------