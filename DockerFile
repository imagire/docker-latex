FROM ubuntu:14.04
MAINTAINER takashi imagire "imagire@gmail.com"

RUN apt-get update -y && \
    apt-get install -y libc6-dev-i386 lib32gmp-dev && \
    wget http://www.pllab.riec.tohoku.ac.jp/smlsharp/download/smlsharp-2.0.0-2_ubuntu-amd64.deb && \
    dpkg -i smlsharp-2.0.0-2_ubuntu-amd64.deb

RUN  apt-get install -y libreadline-dev && \
     apt-get install -y sqlite3 && \
     apt-get install -y zip unzip && \
RUN  apt-get clean
RUN  git clone https://github.com/sstephenson/ruby-build.git .ruby-build
RUN  .ruby-build/install.sh
RUN  rm -fr .ruby-build
RUN  apt-get install -y python-software-properties
RUN  apt-get install -y software-properties-common
RUN  apt-add-repository -y ppa:texlive-backports/ppa
RUN  apt-get update -y
RUN  apt-get install -y texlive
RUN  apt-get install -y texlive-lang-cjk
RUN  updmap-setup-kanji ipaex
ENV PATH $PATH:/usr/texbin:/usr/texbin
