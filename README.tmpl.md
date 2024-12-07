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
