biome = bunx biome

deps: PHONY
	bun install

lint: deps PHONY
	$(biome) check .

lint.fix: deps PHONY
	$(biome) check --write .

codegen.dts: deps PHONY
	bunx tsup src/eslint/index.js --dts-only --format esm --out-dir src/eslint
	$(biome) check --write src/**/*.d.ts

PHONY:
