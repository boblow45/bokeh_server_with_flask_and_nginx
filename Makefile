.PHONY: clean docs help init
.DEFAULT_GOAL := help
SERVER_LOC = ''

define BROWSER_PYSCRIPT
import os, webbrowser, sys

try:
	from urllib import pathname2url
except:
	from urllib.request import pathname2url

webbrowser.open("file://" + pathname2url(os.path.abspath(sys.argv[1])))
endef
export BROWSER_PYSCRIPT

define PRINT_HELP_PYSCRIPT
import re, sys

for line in sys.stdin:
	match = re.match(r'^([a-zA-Z_-]+):.*?## (.*)$$', line)
	if match:
		target, help = match.groups()
		print("%-20s %s" % (target, help))
endef
export PRINT_HELP_PYSCRIPT

BROWSER := python -c "$$BROWSER_PYSCRIPT"

help:
	@python -c "$$PRINT_HELP_PYSCRIPT" < $(MAKEFILE_LIST)

clean: clean-build clean-pyc ## remove all build and Python artifacts

clean-build: ## remove build artifacts
	rm -fr build/
	rm -fr dist/
	rm -fr .eggs/

ifeq ($(OS), Windows_NT)

else
	find . -name '*.egg-info' -exec rm -fr {} +
	find . -name '*.egg' -exec rm -f {} +
endif

clean-pyc: ## remove Python file artifacts
ifeq ($(OS), Windows_NT)

else
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +
	find . -name '__pycache__' -exec rm -fr {} +
endif


init: ## install required packages 
ifeq ($(OS), Windows_NT)

else
	sudo apt-get install build-essential python
	sudo apt-get install python-dev

	sudo apt-get install build-essential python3
	sudo apt-get install python3-dev
endif


start: ## Start container
	docker-compose up -d

stop: ## Stop containers 
	docker-compose down

restart: ## Do a clean rebuild of containers
	docker-compose down
	docker rmi flask
	docker rmi bokeh-serve
	docker-compose build
	docker-compose up -d