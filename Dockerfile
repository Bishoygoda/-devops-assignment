
FROM golang:1.17-alpine
WORKDIR /app
COPY go.mod ./
RUN go mod download
RUN go get github.com/go-redis/redis/v9
ADD . /app
RUN ls -al
RUN go build -o /devops-assignment

EXPOSE 4444

CMD [ "/devops-assignment" ]
