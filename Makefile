MAKEFLAGS += --check-symlink-times
MAKEFLAGS += --jobs
MAKEFLAGS += --no-builtin-rules
MAKEFLAGS += --no-builtin-variables
MAKEFLAGS += --shuffle
MAKEFLAGS += --warn-undefined-variables
SHELL := bash
.DELETE_ON_ERROR:
.ONESHELL:
.SHELLFLAGS := --norc --noprofile -Eeuo pipefail -O dotglob -O nullglob -O extglob -O failglob -O globstar -c

.DEFAULT_GOAL := main

.PHONY: main

clean:
	shopt -u failglob
	rm -v -rf -- ./*.html ./package-lock.json

clobber: clean
	shopt -u failglob
	rm -v -rf -- ./node_modules/


./node_modules/.bin/sass:
	npm install

./index.css: ./node_modules/.bin/sass ./site/index.scss
	'$<' --style compressed -- ./site/index.scss >'$@'

main: index.html
index.html: site/main.sh site/index.m4.html ./index.css README.md
	'$<' "$$PWD/$@"
