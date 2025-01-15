biome = bunx biome

deps: PHONY
	bun install

lint: deps PHONY
	$(biome) check .

lint.fix: deps PHONY
	$(biome) check --write .

PHONY:
