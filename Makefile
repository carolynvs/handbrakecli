SHELL := /bin/bash

BRANCH ?= $(shell git symbolic-ref --short -q HEAD)
VERSION ?= $(shell git describe --abbrev=0)
TAG ?= $(shell if [[ "$(BRANCH)" == "master" ]]; then echo "latest"; else echo $(VERSION); fi)

build: Dockerfile
	docker build -t carolynvs/handbrakecli:$(TAG) --build-arg VERSION=$(VERSION) .

push:
	docker push carolynvs/handbrakecli:$(TAG)

.PHONY: push
