.PHONY: test check clean build dist all

ROOT_LOG_PATH ?= ./log

checkLogPath:
	@if [ ! -d ${ROOT_LOG_PATH} ]; then mkdir -p ${ROOT_LOG_PATH} && echo "~> mkdir ${ROOT_LOG_PATH}"; fi

dev-dockerCheck:
	docker-compose config -q

dev-dockerRun:
	bash ./maintain.sh

dev-dockerStop:
	docker-compose stop

dev-dockerRemove:
	bash ./remove.sh

helpDev:
	@echo "make dev-dockerCheck     -> check docker-compose"
	@echo "make dev-dockerRun       -> run as ./maintain.sh"
	@echo "make dev-dockerStop      -> stop this foler docker-compose"
	@echo "make dev-dockerRemove    -> run as ./remove.sh"
	@echo ""