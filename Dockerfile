FROM kalilinux/kali-linux-docker

LABEL maintainer="https://github.com/TactiFail"
LABEL description="Docker container for running the htcap single-page-application scanner"
LABEL url="https://github.com/fcavallarin/htcap"

WORKDIR /root/
RUN apt update && \
        apt install -y bash wapiti python npm nodejs sqlite3 chromium sqlmap arachni git && \
        npm install puppeteer && \
        git clone https://github.com/TactiFail/htcap.git

ENTRYPOINT "/bin/bash"
