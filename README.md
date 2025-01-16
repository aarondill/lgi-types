<!-- This file is generated from README.tmpl.md -->
# LGI Types

This is a collection of types for GLib and Gio through [LGI](https://github.com/lgi-devs/lgi).

> LGI is gobject-introspection based dynamic Lua binding to GObject based libraries. It allows using GObject-based libraries directly from Lua.

None of the types are complete, but they are great for getting started with LGI.

## Installation

1. Install the [LGI](https://github.com/lgi-devs/lgi) package.
2. Clone this repository (I suggest using a submodule).
3. Add the `lgi-types` directory to your `workspace.library` in `.luarc.json`.
4. Require the `lgi` module in your code. The types will automatically be applied.

```json
{
  "$schema": "https://raw.githubusercontent.com/LuaLS/vscode-lua/master/setting/schema.json",
  "workspace.library": ["/path/to/lgi-types"]
}
```

### Lines of code
<sup><sub>Generated at commit 67769fafea4f5460600efdb69fe0a09a6a52e783</sub></sup>
cloc|github.com/AlDanial/cloc v 2.02
--- | ---

Language|files|blank|comment|code
:-------|-------:|-------:|-------:|-------:
Markdown|2|14|1|43
JSON|1|0|0|12
TOML|1|1|0|9
Lua|25|73|752|7
--------|--------|--------|--------|--------
SUM:|29|88|753|71
