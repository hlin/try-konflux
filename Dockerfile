FROM fedora:39

ARG build_date=undefined
ARG commit_short=undefined

WORKDIR /src
COPY . .

RUN echo ${build_date}
RUN echo ${commit_short}
