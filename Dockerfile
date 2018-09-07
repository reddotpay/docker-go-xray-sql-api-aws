# Base image:
FROM reddotpay/docker-go-sql-api-aws:latest
RUN \
    go get golang.org/x/lint/golint \
    github.com/stretchr/testify/assert \
    github.com/stretchr/testify/require \
    github.com/aws/aws-xray-sdk-go/... \