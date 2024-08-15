---@alias GSourceFunc fun(): boolean

---Good luck.
---@class (exact) GSourceFuncs
---@field check? fun(source: GSource): ready: boolean
---@field dispatch fun(source: GSource, callback?: GSourceFunc): continue: boolean
---This field is allowed in GLib, but gets overridden by LGI.
---It's marked as `false` to create type errors when it's used.
---@field finalize? false
---@field prepare? fun(source: GSource): ready: boolean, timeout: integer?

---@class GSourceStatic
---Note: the `new` method is impossible to use in Lua, as it requires the
---struct size to be known. Use the call operator instead.
---@operator call(GSourceFuncs): GSourceStatic
---@field remove fun(id: integer): boolean

---@class GSource
---@field attach fun(self: GSource, context?: GMainContext): id: integer
---@field destroy fun(self: GSource)
