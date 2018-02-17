FROM ruby:2.5.0

RUN apt-get update && \
    apt-get install -y ack-grep vim less software-properties-common

RUN add-apt-repository ppa:fontforge/fontforge && \
    apt-get install -y fontforge ttfautohint woff-tools

RUN mkdir /app
WORKDIR /app

RUN gem install sass
ENV LANF C.UTF-8

CMD ["bash"]
