SHELL=/bin/sh

%:
	@:
args = `arg="$(filter-out $@,$(MAKECMDGOALS))" && echo $${arg:-${1}}`

build:
	docker run \
		--interactive --tty --rm \
		--volume "${PWD}:/tmp" \
		--name cheatset \
		jonasbn/cheatset:latest \
		generate $(args)
