SHELL := /bin/bash

.PHONY: all demo clean

all: demo

demo: venv
	source venv/bin/activate; \
	jupyter-nbconvert --execute Iris.ipynb; \
	deactivate


venv: requirements.txt
	virtualenv -p python3 venv
	source venv/bin/activate; \
	pip install -r requirements.txt; \
	deactivate

clean:
	rm -rf venv .ipynb_checkpoints Iris.html
