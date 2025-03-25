---This class naming is neeeded because the conflic with the GObject class
---@class GObjectModule
---@field Object GObjectStatic

---@class GObject :userdata TODO:
----For example, this can be used `a._type:is_type_of(b)` to to check that `b` is of type `a`.
---@field _type GObjectStatic

---@class GObjectStatic :userdata TODO:
---@field is_type_of fun(self: GObjectStatic, obj: any): boolean
