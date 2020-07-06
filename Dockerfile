FROM ubuntu:18.04 


RUN apt-get update; \
    apt-get install -y \
      wget \
      xvfb \
      chromium-browser \
      libgtk2.0-0

RUN wget https://cdndl.otohits.net/dl/OtohitsApp_5055_linux_portable.tar.gz \
    && tar -xzf OtohitsApp_5055_linux_portable.tar.gz \
    && echo "/login:${APPLICATION_KEY}" > otohits.ini \
    && echo "/nosandbox" >> otohits.ini

COPY . .


ENTRYPOINT ["/run.sh"]
