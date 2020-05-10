FROM openjdk:8-slim

# system update
RUN apt-get -y update && apt-get -y upgrade

# locale
RUN apt-get -y install locales && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8

# timezone (Asia/Tokyo)
ENV TZ JST-9

# etc
ENV TERM xterm

# tools
RUN apt-get install -y vim git zip unzip less wget curl default-mysql-client

# embulk
RUN curl -o /usr/local/bin/embulk --create-dirs -L "http://dl.embulk.org/embulk-latest.jar" && \
    chmod +x /usr/local/bin/embulk
RUN embulk gem install embulk-filter-column embulk-filter-row embulk-output-mysql specific_install
RUN embulk gem specific_install https://github.com/nishim/embulk-input-search_analytics.git fix-current-signet-required-ruby2.4

ADD config.yml.liquid /root/config.yml.liquid 

WORKDIR /root
