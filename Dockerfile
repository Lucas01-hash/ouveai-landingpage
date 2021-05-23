FROM alpine:3.4

EXPOSE 80
ADD ./src/ /app
WORKDIR /app
ENTRYPOINT ["nginx", "-c",  "/nginx.conf"]

RUN apk add --no-cache nginx
ADD nginx.conf /
