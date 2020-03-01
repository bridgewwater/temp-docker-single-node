.PHONY: test check clean build dist all

TOP_DIR := $(shell pwd)

# ifeq ($(FILE), $(wildcard $(FILE)))
# 	@ echo target file not found
# endif

INFO_FIRST_ROOT ?= dev

dev-dockerCheck:
	cd ./$(INFO_FIRST_ROOT) && make dev-dockerCheck

dev-dockerRun:
	cd ./$(INFO_FIRST_ROOT) && make dev-dockerRun

dev-dockerStop:
	cd ./$(INFO_FIRST_ROOT) && make dev-dockerStop

dev-dockerRemove:
	cd ./$(INFO_FIRST_ROOT) && make dev-dockerRemove

help:
	@echo "make dev-dockerCheck     -> to folder $(INFO_FIRST_ROOT)"
	@echo "make dev-dockerRun       -> to folder $(INFO_FIRST_ROOT)"
	@echo "make dev-dockerStop      -> to folder $(INFO_FIRST_ROOT)"
	@echo "make dev-dockerRemove    -> to folder $(INFO_FIRST_ROOT)"
	@echo ""
	@echo "other env cd to foder use [ make help ] to see"
	@echo "more info see Makefile code"