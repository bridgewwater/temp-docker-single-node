.PHONY: test check clean build dist all

TOP_DIR := $(shell pwd)

# ifeq ($(FILE), $(wildcard $(FILE)))
# 	@ echo target file not found
# endif

INFO_FIRST_ROOT ?= dev

devDockerCheck:
	cd ./$(INFO_FIRST_ROOT) && make devDockerCheck

devDockerRun:
	cd ./$(INFO_FIRST_ROOT) && make devDockerRun

devDockerStop:
	cd ./$(INFO_FIRST_ROOT) && make devDockerStop

devDockerRemove:
	cd ./$(INFO_FIRST_ROOT) && make devDockerRemove

help:
	@echo "make devDockerCheck     -> to folder $(INFO_FIRST_ROOT)"
	@echo "make devDockerRun       -> to folder $(INFO_FIRST_ROOT)"
	@echo "make devDockerStop      -> to folder $(INFO_FIRST_ROOT)"
	@echo "make devDockerRemove    -> to folder $(INFO_FIRST_ROOT)"
	@echo ""
	@echo "other env cd to foder use [ make help ] to see"
	@echo "more info see Makefile code"