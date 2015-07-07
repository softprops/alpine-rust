FROM alpine:3.2
MAINTAINER Doug Tangren "d.tangren@gmail.com"
RUN apk update && apk add --update bash file curl sudo && rm -rf /var/cache/apk/*
ENV SHELL /bin/bash
RUN curl -sSf https://static.rust-lang.org/rustup.sh | sh -s -- -y
VOLUME ["/project"]
WORKDIR "/project"
CMD ["/bin/bash"]