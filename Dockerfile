FROM fedora:44

ARG short_commit=unknown

WORKDIR /src
COPY . .

RUN echo '    version="1.2.3",' > f
RUN sed -i -E "s/(version=\")([^\"]+)/\1\2+$(date -u +'%Y-%m-%dT%H%M%S').git.$short_commit/" f && cat f
