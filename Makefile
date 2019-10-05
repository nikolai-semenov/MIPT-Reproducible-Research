.PHONY: all html clean

all: html

html: venv
	. venv/bin/activate; \
	jupyter-nbconvert --execute Iris.ipynb; \
	deactivate


venv: requirements.txt
	virtualenv -p python3 venv
	. venv/bin/activate; \
	pip install -r requirements.txt; \
	deactivate

clean:
	rm -rf venv .ipynb_checkpoints Iris.html
