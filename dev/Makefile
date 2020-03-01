.PHONY: test check clean build dist all

ROOT_LOG_PATH ?= ./log

checkLogPath:
	@if [ ! -d ${ROOT_LOG_PATH} ]; then mkdir -p ${ROOT_LOG_PATH} && echo "~> mkdir ${ROOT_LOG_PATH}"; fi

devDockerCheck:
	docker-compose config -q

devDockerRun:
	bash ./maintain.sh

devDockerStop:
	docker-compose stop

devDockerRemove:
	bash ./remove.sh

helpDev:
	@echo "make devDockerCheck     -> check docker-compose"
	@echo "make devDockerRun       -> run as ./maintain.sh"
	@echo "make devDockerStop      -> stop this foler docker-compose"
	@echo "make devDockerRemove    -> run as ./remove.sh"
	@echo ""