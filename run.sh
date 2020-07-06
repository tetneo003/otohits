#!/bin/bash

echo "/login:{APPLICATION_KEY}" > otohits.ini
echo "/nosandbox" >> otohits.ini

Xvfb :51 & export DISPLAY=:51
./otohits-app
