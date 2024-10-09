FROM fedora:39

WORKDIR /src
COPY . .

RUN dnf install -y git
RUN ls -aR
RUN git tag
