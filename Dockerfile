FROM alpine:3.10

LABEL maintainer="Ernesto Ojeda <ernesto.ojeda@intel.com>"

RUN apk add --update --no-cache curl jq ca-certificates
COPY ./lookup.sh /

ENTRYPOINT ["/lookup.sh"]
