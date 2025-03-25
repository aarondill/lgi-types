---@meta
---@alias MainContextFlags
---| 'NONE' default behavior
---| 'OWNERLESS_POLLING' Assume that polling for events will free the thread to
---process other jobs. That’s useful if you’re using
---g_main_context_{prepare,query,check,dispatch} to integrate GMainContext in
---other event loops.

---@class GMainContextStatic :GObjectStatic The GMainContext struct is an opaque data type representing a set of sources to be handled in a main loop.
---@field new fun(): GMainContext
---@field new_for_flags fun(flags: Flags<MainContextFlags>): GMainContext

---@class GMainContext :GObject TODO:

---@class GMainLoopStatic :GObjectStatic
---@field new fun(context?: GMainContext, is_running: boolean): GMainLoop

---@class GMainLoop :GObject
---@field get_context fun(self: GMainLoop): GMainContext
---@field is_running fun(self: GMainLoop): boolean
---@field quit fun(self: GMainLoop)
---@field run fun(self: GMainLoop)
