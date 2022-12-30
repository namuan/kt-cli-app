export PROJECTNAME=$(shell basename "$(PWD)")

.SILENT: ;               # no need for @

setup: ## Setup required dependencies
	echo "Install SDKMAN! (https://sdkman.io/install)"
	echo "Run the following commands"
	echo "sdk install java 22.2.r17-grl"
	echo "gu install native-image"
	echo "export GRAALVM_HOME=sdk home java 22.2.r17-grl"

build: ## Builds native image
	mvn clean package -Pnative

run: ## Runs the native binary
	./target/${PROJECTNAME}

.PHONY: help
.DEFAULT_GOAL := help

help: Makefile
	echo
	echo " Choose a command run in "$(PROJECTNAME)":"
	echo
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
	echo
