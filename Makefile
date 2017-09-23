VERSION ?= $(shell git describe)

default: Dockerfile
	docker build -t carolynvs/handbrakecli:$(VERSION) --build-arg VERSION=$(VERSION) .
