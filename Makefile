test:
	sentinel test -verbose $(shell find . -name "$(name)" -type f ! -path "*/testdata/*")

tests:
	sentinel test $(shell find . -name "*.sentinel" -type f ! -path "*/testdata/*")

format:
	sentinel fmt -write=true $(shell find . -name "*.sentinel" -type f)

generate:
ifeq ($(strip $(name)),)
	@echo flag needs an argument: name
	@echo Usage: make generate name=deny-old-module-versions
else
	@mkdir -p policies/$(name)/test/$(name)
	@mkdir -p policies/$(name)/testdata
	@cp example/example.sentinel policies/$(name)/$(name).sentinel
	@cp example/test/example/*.hcl policies/$(name)/test/$(name)
	@cp example/testdata/*.sentinel policies/$(name)/testdata
	@echo Policy written to policies/$(name)/$(name).sentinel
	@echo Done.
endif

.PHONY: format tests
