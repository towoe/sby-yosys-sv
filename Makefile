DOCKER_IMAGE_NAME?=sby-yosys-sv:18.04
DOCKER_BUILD_OPTS?=--build-arg http_proxy=$(http_proxy) \
                   --build-arg https_proxy=$(https_proxy) \
                   --build-arg no_proxy=$(no_proxy) \
                   --build-arg HTTP_PROXY=$(http_proxy) \
                   --build-arg HTTPS_PROXY=$(https_proxy) \
                   --build-arg NO_PROXY=$(no_proxy) \
                   --network host

image: Dockerfile
	@docker build $(DOCKER_BUILD_OPTS) -t $(DOCKER_IMAGE_NAME) .

image-dist:
	@docker save $(DOCKER_IMAGE_NAME) -o $(DOCKER_IMAGE_NAME).docker.tar

