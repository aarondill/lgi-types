---@meta
---@alias GDBusMessageFlags
---| "NONE" no flags
---| "NO_REPLY_EXPECTED" no reply is expected
---| "NO_AUTO_START" The bus must not launch an owner for the destination name in response to this message.
---| "ALLOW_INTERACTIVE_AUTHORIZATION" The message bus will allow interactive authorization of the client.

---@class GDBusMessageStatic
---@field new fun(): GDBusMessage
---@field new_method_call fun(bus_name?: string, object_path: string, interface_name?: string, method_name: string): GDBusMessage
---@field new_signal fun(path: string, interface_name: string, signal_name: string): GDBusMessage

---@class GDBusMessage TODO:
---@field get_body fun(self: GDBusMessage): GVariant?
---@field get_flags fun(self: GDBusMessage): integer -- GDBusMessageFlags
---@field set_body fun(self: GDBusMessage, body: GVariant)
---@field set_flags fun(self: GDBusMessage, flags: Enum<GDBusMessageFlags>)
