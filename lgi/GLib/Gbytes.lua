---@class GBytesStatic
---@operator call(string): GBytes
---@field new fun(content: string): GBytes

---@class GBytes
---@field compare fun(self: GBytes, other: GBytes): integer
---This is added by lgi -- it also allows using #bytes to get the size
---@field data string? Note: if length == 0, then nil is returned
---@field equal fun(self: GBytes, other: GBytes): boolean
---@field get_data fun(self: GBytes): string? Note: if length == 0, then nil is returned
---@field get_region fun(self: GBytes, element_size: integer, offset: integer, n_elements: integer): userdata this is currently unusable in lua
---@field get_size fun(self: GBytes): integer
---@field hash fun(self: GBytes): integer
---@field new_from_bytes fun(self: GBytes, offset: integer, length: integer): GBytes
