# sentrux plugins

Language plugins for [sentrux](https://github.com/sentrux/sentrux) — tree-sitter grammars and queries.

## Install a plugin

```bash
sentrux plugin add gdscript
```

## Available plugins

| Language | Extensions | Status |
|----------|-----------|--------|
| GDScript (Godot) | `.gd` | Available |

## Create a new plugin

```bash
# 1. Init template
sentrux plugin init my-language

# 2. Build the tree-sitter grammar
cd ~/.sentrux/plugins/my-language/grammar-src
tree-sitter generate
cc -shared -fPIC -o ../grammars/$(sentrux plugin platform) src/parser.c

# 3. Write queries/tags.scm (define function, class, import captures)

# 4. Validate
sentrux plugin validate ~/.sentrux/plugins/my-language

# 5. PR to this repo
```

## Plugin spec

Each plugin is a directory containing:

```
<language>/
├── plugin.toml          ← manifest (name, extensions, capabilities, checksums)
├── queries/
│   └── tags.scm         ← tree-sitter queries for structural extraction
├── grammars/            ← built by CI for each platform
│   ├── darwin-arm64.dylib
│   ├── darwin-x86_64.dylib
│   └── linux-x86_64.so
└── tests/
    ├── sample.<ext>     ← sample source file
    └── expected.json    ← expected parse output (optional)
```

### Required query captures

| Capability | Capture | Description |
|-----------|---------|-------------|
| functions | `@func.def`, `@func.name` | Function definitions |
| classes | `@class.def`, `@class.name` | Class definitions |
| imports | `@import.path` | Import statements |
| calls (optional) | `@call.name` | Function calls |

## License

MIT
