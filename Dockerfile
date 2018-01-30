FROM ubuntu:14.04
MAINTAINER takashi imagire "imagire@gmail.com"

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y python-software-properties
RUN apt-get install -y software-properties-common
RUN apt-get install -y texlive
RUN apt-get install -y texlive-lang-cjk xdvik-ja texlive-fonts-recommended
RUN apt-get install -y texlive-humanities
RUN apt-get install -y latexmk

RUN apt-get install -y make
RUN apt-get install -y git
