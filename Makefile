.PHONY: test check clean build dist all

TOP_DIR := $(shell pwd)
IS_ROOT_RUN := 1
# ifeq ($(FILE), $(wildcard $(FILE)))
# 	@ echo target file not found
# endif

include dev/Makefile

help: help-dev
	@echo ""
	@echo "other env cd to foder use [ make help ] to see"
	@echo "more info see Makefile code"