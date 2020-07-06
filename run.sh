#!/bin/bash


file="otohits.ini"
cat > $file <<EOFSS
/login:$APPLICATION_KEY
/nosandbox
EOFSS



Xvfb :51 & export DISPLAY=:51
./otohits-app
