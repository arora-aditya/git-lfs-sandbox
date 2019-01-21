SHELL := /bin/bash

.DEFAULT_GOAL := help
.PHONY: init

current_time=$(date "+%Y.%m.%d-%H.%M.%S")

init: ## Install git LFS and setup
	git lfs install

_gen: ## Generate a gile with random ASCII letters to store to git LFS
	base64 /dev/urandom | head -c 100 > random_gen`(date "+%Y.%m.%d-%H.%M.%S")`.txt

_update: ## Update an existing randomly generated file
	base64 /dev/urandom | head -c 100 > `find . -name "random*.txt" | head -n 1`

# Self-Documented Makefile see https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
help: ## When you just dont know what to do with your life, look for inspiration here!
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'