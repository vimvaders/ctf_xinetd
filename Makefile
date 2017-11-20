.PHONY: all build run

NAME := $(notdir $(patsubst %/,%,$(CURDIR)))
PORT := 9999

all: run

run: build
	docker run -it -p $(PORT):9999 $(NAME)

build:
	docker build -t $(NAME) .
