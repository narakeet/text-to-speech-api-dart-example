DOCKER_IMAGE_NAME ?= dart:3.0.5
MAKE_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
DOCKER_RUN := docker run --rm -v $(MAKE_DIR):/work -w /work -e NARAKEET_API_KEY
RUN := $(DOCKER_RUN) $(DOCKER_IMAGE_NAME)

run:
	$(RUN) dart tts.dart

	
