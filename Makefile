.PHONY: all start check

all: start check

start:
	chef serve --path recipes

check:
	find recipes -name '*.cook' | xargs -I {} chef recipe check --warnings-as-errors {}
