#!/bin/bash

export "/login:{APPLICATION_KEY}" > otohits.ini
export "/nosandbox" >> otohits.ini

Xvfb :51 & export DISPLAY=:51
./otohits-app
