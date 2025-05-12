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
  "extends": [
    "@mkobayashime/shared-config/biome"
  ]
}
```

## ESLint

```bash
bun add -d @mkobayashime/shared-config eslint typescript-eslint
pnpm add -D @mkobayashime/shared-config eslint typescript-eslint
```

### [`typescript-with-biome`](./src/eslint/typescriptWithBiome.js)

```javascript
import { typescriptWithBiome } from "@mkobayashime/shared-config/eslint";

export default [
  ...typescriptWithBiome,
  {
    languageOptions: {
      parserOptions: {
        project: "./tsconfig.json",
      },
    },
  },
];
```
