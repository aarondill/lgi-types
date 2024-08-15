---@meta
---@diagnostic disable: duplicate-doc-field This is used for overloading. Note: It's not perfect because the return types will not be narrowed.
---Note that none of the type definitions in this file are complete. If a field is missing, add it and report it.

---@class GFileDescriptorBased
---@field get_fd fun(self: GFileDescriptorBased): integer

---@class Gio
---@field BufferedInputStream GBufferedInputStreamStatic
---@field BusType EnumDefinition<GBusType>
---@field Cancellable GCancellableStatic
---@field Credentials GCredentialsStatic
---@field DBusAuthObserver GDBusAuthObserverStatic
---@field DBusCallFlags FlagsDefinition<GDBusCallFlags>
---@field DBusConnection GDBusConnectionStatic
---@field DBusConnectionFlags FlagsDefinition<GDBusConnectionFlags>
---@field DBusMessage GDBusMessageStatic
---@field DBusMessageFlags FlagsDefinition<GDBusMessageFlags>
---@field DBusSendMessageFlags FlagsDefinition<GDBusSendMessageFlags>
---@field DBusSignalFlags FlagsDefinition<GDBusSignalFlags>
---@field DataInputStream GDataInputStreamStatic
---@field FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME "standard::display-name"
---@field FILE_ATTRIBUTE_STANDARD_NAME "standard::name"
---@field FILE_ATTRIBUTE_STANDARD_SIZE "standard::size"
---@field FILE_ATTRIBUTE_STANDARD_TYPE "standard::type"
---@field File GFileStatic
---@field FileCopyFlags FlagsDefinition<GFileCopyFlags>
---@field FileCreateFlags FlagsDefinition<GFileCreateFlags>
---@field FileInfo GFileInfoStatic
---@field FileMonitorFlags FlagsDefinition<GFileMonitorFlags>
---@field FileMonitorEvent EnumDefinition<GFileMonitorEvent>
---@field FileQueryInfoFlags FlagsDefinition<GFileQueryInfoFlags>
---@field FileType EnumDefinition<GFileType>
---@field IOErrorEnum EnumDefinition<string>
---@field IOStreamSpliceFlags FlagsDefinition<GIOStreamSpliceFlags>
---@field OutputStreamSpliceFlags FlagsDefinition<GOutputStreamSpliceFlags>
---@field Subprocess GSubprocessStatic
---@field SubprocessFlags FlagsDefinition<GSubprocessFlags>
---@field SubprocessLauncher GSubprocessLauncherStatic
---@field UnixInputStream GUnixInputStreamStatic
---@field bus_get fun(bus_type: Enum<GBusType>, cancellable?: GCancellable, callback: GAsyncReadyCallback<GDBusConnection>)
---@field bus_get_finish fun(res: GAsyncResult): GDBusConnection
---@field bus_get_sync fun(bus_type: Enum<GBusType>, cancellable?: GCancellable): GDBusConnection

local lgi = require("lgi") ---@type lgi
return lgi.Gio
