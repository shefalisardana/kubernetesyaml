FROM ubuntu:18.04
MAINTAINER shefali
RUN apt-get update
ENTRYPOINT ["ping"]
CMD ["localhost"]

