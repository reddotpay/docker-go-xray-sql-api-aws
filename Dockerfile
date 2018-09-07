# Base image:
FROM reddotpay/docker-go-sql-api:latest

RUN \
    golang.org/x/lint/golint \
    github.com/stretchr/testify/assert \
    github.com/stretchr/testify/require \
    github.com/aws/aws-xray-sdk-go/... \

# Install golint
RUN curl -O https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py --user
RUN ~/.local/bin/pip install awscli --upgrade --user

RUN apt-get update
RUN apt-get install jq zip -y

ENV PATH $PATH:~/.local/bin