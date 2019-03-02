#
# Builder
#
FROM abiosoft/caddy:builder as builder

ARG version="0.11.4"
ARG plugins="git,filebrowser,cors,realip,expires,cache"

# process wrapper
RUN go get -v github.com/abiosoft/parent

RUN VERSION=${version} PLUGINS=${plugins} /bin/sh /usr/bin/builder.sh

#
# Final stage
#
FROM alpine:3.8
LABEL maintainer "Abiola Ibrahim <abiola89@gmail.com>"

ARG version="0.11.4"
LABEL caddy_version="$version"

# Let's Encrypt Agreement
ENV ACME_AGREE="true"

RUN apk add --no-cache openssh-client git

# install caddy
COPY --from=builder /install/caddy /usr/bin/caddy

# validate install
RUN /usr/bin/caddy -version
RUN /usr/bin/caddy -plugins

# === Warodom Edit =====
RUN apk add tzdata
RUN cp /usr/share/zoneinfo/Asia/Bangkok /etc/localtime
RUN echo "Asia/Bangkok" > /etc/timezone && date

EXPOSE 80 443
WORKDIR /var/www/public

# install process wrapper
COPY --from=builder /go/bin/parent /bin/parent
ENTRYPOINT ["/bin/parent", "caddy"]
CMD ["--conf", "/etc/caddy/Caddyfile", "--log", "stdout", "--agree=$ACME_AGREE"]



