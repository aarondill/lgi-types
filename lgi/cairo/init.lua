---@class cairo
---@field Surface CairoSurfaceStatic
---@field Pattern CairoPatternStatic
---@field version integer
---@field version_encode fun(major: integer, minor: integer, micro: integer): integer
---@field version_string string

---@class CairoSurfaceStatic :LgiClassStatic
---@class CairoSurface :LgiClass
---@field finish fun(self: CairoSurface)

---@class CairoPatternStatic :LgiClassStatic
---@class CairoPattern :LgiClass

return require("lgi").cairo
