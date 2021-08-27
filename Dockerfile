FROM        golang:1.17.0-alpine3.14 AS BUILD_IMAGE
RUN         apk add --update --no-cache curl
WORKDIR     /go/src/github.com/schollz/croc
COPY        croc.version .
RUN         curl -#L -o croc.tar.gz https://api.github.com/repos/schollz/croc/tarball/v$(cat croc.version) && \
            tar -xzf croc.tar.gz --strip 1 &&  \
            go get -d && \
            go build -ldflags="-s -w" -o /usr/bin/croc

FROM        alpine:3.14.2
RUN         apk add --update --no-cache tini
COPY        --from=BUILD_IMAGE /usr/bin/croc /usr/bin/croc
ENTRYPOINT  ["/sbin/tini", "--", "/usr/bin/croc"]