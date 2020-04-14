.PHONY: test check clean build dist all

INFO-dev-ROOT := $(shell if [ ! -n "${TOP_DIR}" ]; then echo "." ; else echo "${TOP_DIR}/dev" ; fi)

dev-docker-check:
	cd $(INFO-dev-ROOT) && docker-compose config -q

dev-docker-up:
	cd $(INFO-dev-ROOT) && bash ./maintain.sh

dev-docker-stop:
	cd $(INFO-dev-ROOT) && docker-compose stop

dev-docker-restart:
	cd $(INFO-dev-ROOT) && docker-compose restart

dev-docker-Remove:
	cd $(INFO-dev-ROOT) && docker-compose rm -s -f -v
	# can change this for more biz: cd $(INFO-dev-ROOT) && bash ./remove.sh

help-dev:
	@echo "make dev-docker-check     -> check docker-compose"
	@echo "make dev-docker-up        -> update as $(INFO-dev-ROOT)/maintain.sh"
	@echo "make dev-docker-stop      -> stop foler $(INFO-dev-ROOT) docker-compose"
	@echo "make dev-docker-restart   -> restart foler $(INFO-dev-ROOT) docker-compose"
	@echo "make dev-docker-Remove    -> remove as $(INFO-dev-ROOT) docker-compose"
	@echo ""