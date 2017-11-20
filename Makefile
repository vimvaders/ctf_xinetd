.PHONY: build run

NAME := $(notdir $(patsubst %/,%,$(CURDIR)))
PORT := 9999

build:
	docker build -t $(NAME) .

run: build
	docker run -it -p $(PORT):9999 $(NAME)
