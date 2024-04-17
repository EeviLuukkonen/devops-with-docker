FROM alpine

RUN apk add --no-cache git docker

WORKDIR /usr/src/app

COPY builder.sh .

RUN chmod +x builder.sh

ENTRYPOINT ["./builder.sh"]
