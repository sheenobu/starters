PROJECT=love-starter

RUNNER=/bin/sh -c
COMMON=

ENVPATH=$(HOME)/env/$(PROJECT).drv

# enable these for nix support and nix-shell style running
RUNNER=nix-shell $(ENVPATH) --command
COMMON=$(ENVPATH)

test: generate $(COMMON)
	$(RUNNER) './tests/runner.lua -v'

generate:
	find tests/ -name \*test.lua \
		| sed "s,^tests/\(.*\).lua$$,\1,g" \
		| awk '{ print "require " "\"" $$1 "\"" }' > tests/testlist.lua

run: $(COMMON)
	$(RUNNER) 'love .'


##
## nix support code
##

$(ENVPATH): shell.nix
	nix-instantiate shell.nix --indirect --add-root $(ENVPATH)

nix-shell: $(ENVPATH)
	nix-shell $(ENVPATH)
