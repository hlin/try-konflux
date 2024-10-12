FROM fedora:39

ARG commit_short=unknown

WORKDIR /src
COPY . .

RUN echo ${build_date}
RUN echo ${commit_short}

RUN echo '    version="1.2.3",' > f
RUN sed -i -E "s/(version=\")([^\"]+)/\1\2+$(date -u +'%Y-%m-%dT%H%M%S').git.$commit_short/" f && cat f
