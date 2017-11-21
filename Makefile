.PHONY: all build clean debug run

NAME := $(notdir $(patsubst %/,%,$(CURDIR)))
PORT := 9999
RUN_MODE := -d
SHELL := /bin/bash

all: run

run: | stop build
	docker run $(RUN_MODE) -p $(PORT):9999 --name $(NAME) $(NAME)

build:
	docker build -t $(NAME) .

clean stop:
	@ docker kill $(NAME) >/dev/null 2>&1 || true
	@ docker rm $(NAME) >/dev/null 2>&1 || true
	@ echo "[$(NAME) stopped]"

debug: RUN_MODE := -it
debug: run
