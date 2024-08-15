---@meta
---@diagnostic disable: duplicate-doc-field This is used for overloading. Note: It's not perfect because the return types will not be narrowed.
---Note that none of the type definitions in this file are complete. If a field is missing, add it and report it.

---@class Gio
---@field bus_get_finish fun(res: GAsyncResult): GDBusConnection
---@field bus_get fun(bus_type: Enum<GBusType>, cancellable?: GCancellable, callback: GAsyncReadyCallback<GDBusConnection>)
---@field bus_get_sync fun(bus_type: Enum<GBusType>, cancellable?: GCancellable): GDBusConnection
---@field BusType EnumDefinition<GBusType>
---@field Cancellable GCancellableStatic
---@field DataInputStream GDataInputStreamStatic
---@field DBusCallFlags FlagsDefinition<GDBusCallFlags>
---@field DBusConnectionFlags FlagsDefinition<GDBusConnectionFlags>
---@field DBusConnection GDBusConnectionStatic
---@field DBusMessageFlags FlagsDefinition<GDBusMessageFlags>
---@field DBusMessage GDBusMessageStatic
---@field DBusSendMessageFlags FlagsDefinition<GDBusSendMessageFlags>
---@field DBusSignalFlags FlagsDefinition<GDBusSignalFlags>
---@field FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME "standard::display-name"
---@field FILE_ATTRIBUTE_STANDARD_NAME "standard::name"
---@field FILE_ATTRIBUTE_STANDARD_SIZE "standard::size"
---@field FILE_ATTRIBUTE_STANDARD_TYPE "standard::type"
---@field FileCopyFlags FlagsDefinition<GFileCopyFlags>
---@field FileCreateFlags FlagsDefinition<GFileCreateFlags>
---@field File GFileStatic
---@field FileInfo GFileInfoStatic
---@field FileQueryInfoFlags FlagsDefinition<GFileQueryInfoFlags>
---@field FileType EnumDefinition<GFileType>
---@field IOErrorEnum EnumDefinition<string>
---@field IOStreamSpliceFlags FlagsDefinition<GIOStreamSpliceFlags>
---@field OutputStreamSpliceFlags FlagsDefinition<GOutputStreamSpliceFlags>
---@field SubprocessFlags FlagsDefinition<GSubprocessFlags>
---@field Subprocess GSubprocessStatic
---@field SubprocessLauncher GSubprocessLauncherStatic
---@field UnixInputStream GUnixInputStreamStatic

local lgi = require("lgi") ---@type lgi
return lgi.Gio
