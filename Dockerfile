# Base image:
FROM reddotpay/docker-go-sql-api-aws:latest
RUN \
    go get golang.org/x/lint/golint \
    github.com/stretchr/testify/assert \
    github.com/stretchr/testify/require \
    go.uber.org/zap \
    github.com/reddotpay/logger \
    github.com/aws/aws-xray-sdk-go/... \
    github.com/go-sql-driver/mysql \
    github.com/reddotpay/sqlx \
    github.com/gofrs/uuid \
    gopkg.in/go-playground/validator.v9 \
    github.com/reddotpay/logger2
