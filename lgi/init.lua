---@meta lgi
---@diagnostic disable: duplicate-doc-field

---Note that none of the type definitions in this file are complete.
---If a field is missing, add it and report it.

---LGI handles enums and bitflags, allowing a string to be passed, or an array of strings, or an integer
---It also allows a table {[T]=any}, but I've chosen not to include this in the type
---@alias Flags<T> T|T[]|integer
---Note that this also allows calling the enum with a table, to get the integer value `FLAGS({"A", "B"}) == FLAGS.A | FLAGS.B`
---@alias FlagsDefinition<T> {[T]: integer, [integer]: T|{[T]: integer?, [1]: integer?}}
---@alias Enum<T> T|integer
---@alias EnumDefinition<T> {[T]: integer, [integer]: T}

---An intentionally opaque class that must be passed to the _finish method. This should only ever be used *once*!
---@class GAsyncResult :GObject
---Or nil, since you may pass nil if you don't care about the result
---@alias GAsyncReadyCallback<T> fun(self: T, task: GAsyncResult)|nil

---These are performed through lgi
---@alias LGI.Error.domain table|string
---@alias LGI.Error.code string|integer

---@class GError :GObject
---@field code string
---@field domain string
---@field matches fun(self: GError, other: GError): boolean
---@field matches fun(self: GError, domain: LGI.Error.domain, code: LGI.Error.code): boolean
---@field message string

---@class GErrorStatic :GObjectStatic
---@field new fun(domain: LGI.Error.domain, code: LGI.Error.code, message: string): GError

---@class LgiClass
----For example, this can be used `a._type:is_type_of(b)` to to check that `b` is of type `a`.
---@field _type LgiClassStatic
---@field _native userdata A native pointer to the object

---@class LgiClassStatic
---@field is_type_of fun(self: LgiClassStatic, obj: any): boolean

---@class lgi
---@field GLib GLib
---@field Gio Gio
---@field GioUnix GioUnix
---@field cairo cairo
---@field Pango Pango
---@field GObject GObjectModule
---@field Gtk Gtk
---@field Gdk Gdk
---@field GdkPixbuf GdkPixbufModule
---Use direct access instead. It has better types.
---@field require fun(mod: string): unknown

local lgi = require("lgi") ---@type lgi
return lgi
