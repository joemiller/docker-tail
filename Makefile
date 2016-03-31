all: install

test: test_static ## run all test suites

test_static: ## run shellcheck static analysis tests
	shellcheck ./docker-tail

install: ## install docker-tail
	install -m 0755 -p ./docker-tail /usr/local/bin/docker-tail

uninstall: ## uninstall docker-tail
	rm -f -- /usr/local/bin/docker-tail

circle_deps: ## install dependencies on circle-ci
	bash test/circle_deps.sh

help: ## print list of tasks and descriptions
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := help

.PHONY: all test help
