IMAGE_NAME 		= $(shell basename $(PWD) | sed -e 's/docker-//')
IMAGE_TAG		= dvasia/$(IMAGE_NAME):latest

.PHONY: status docker build tag

status:
	@echo "IMAGE_NAME   = $(IMAGE_NAME)"
	@echo "IMAGE_TAG    = $(IMAGE_TAG)"

build:
	@docker build -t $(IMAGE_TAG) .

docker: build

tag:
	@for version in `cat versions`; do \
		git tag -f $${version}; \
		git push -f origin refs/tags/$${version}:refs/tags/$${version}; \
	done
