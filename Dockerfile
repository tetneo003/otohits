FROM ubuntu:18.04 


RUN apt-get update; \
    apt-get install -y \
      wget \
      xvfb \
      chromium-browser \
      libgtk2.0-0

RUN wget https://www.otohits.net/dl/OtohitsApp_5068_linux_portable.tar.gz \
    && tar -xzf OtohitsApp_5055_linux_portable.tar.gz \
    && rm OtohitsApp_5055_linux_portable.tar.gz

COPY . .


ENTRYPOINT ["sh", "/run.sh"]
