FROM ruby:2.1-onbuild

RUN apt-get update && apt-get install -y nodejs locales

# Set the locale
RUN dpkg-reconfigure locales && \
    locale-gen C.UTF-8 && \
    /usr/sbin/update-locale LANG=C.UTF-8

ENV LC_ALL C.UTF-8

CMD ["guard"]
