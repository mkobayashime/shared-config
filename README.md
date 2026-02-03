# @mkobayashime/shared-config

## Biome

[config](./src/biome/index.json)

```bash
bun add -d @mkobayashime/shared-config @biomejs/biome
pnpm add -D @mkobayashime/shared-config @biomejs/biome
```

in `biome.json`

```json
{
  "$schema": "./node_modules/@biomejs/biome/configuration_schema.json",
  "extends": [
    "@mkobayashime/shared-config/biome"
  ]
}
```

## ESLint

```bash
bun add -d @mkobayashime/shared-config eslint typescript-eslint eslint-config-flat-gitignore
pnpm add -D @mkobayashime/shared-config eslint typescript-eslint eslint-config-flat-gitignore
```

### [`typescript-with-biome`](./src/eslint/typescriptWithBiome.js)

```javascript
import { typescriptWithBiome } from "@mkobayashime/shared-config/eslint";
import { defineConfig } from "eslint/config";

export default defineConfig(
  typescriptWithBiome,
  {
    languageOptions: {
      parserOptions: {
        project: "./tsconfig.json",
      },
    },
  },
);
```
