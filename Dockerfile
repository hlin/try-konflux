FROM fedora:42

COPY . /src

RUN dnf install -y git
RUN ls -a /src
RUN git tag
