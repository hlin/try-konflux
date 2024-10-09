FROM fedora:39

WORKDIR /src
COPY . .

RUN dnf install -y git
RUN ls -a
RUN git tag
