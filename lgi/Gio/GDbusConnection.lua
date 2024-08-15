---@meta

---@alias GBusType
---| "STARTER" An alias for the message bus that activated the process, if any.
---| "NONE" Not a message bus
---| "SYSTEM" The systemwide message bus
---| "SESSION" The login session message bus

---@alias GDBusConnectionFlags
---| "NONE" No flags
---| 'AUTHENTICATION_CLIENT' Perform authentication against server.
---| 'AUTHENTICATION_SERVER' Perform authentication against client.
---| 'AUTHENTICATION_ALLOW_ANONYMOUS' Allow anonymous authentication.
---| 'MESSAGE_BUS_CONNECTION' The connection is a message bus connection.
---| 'DELAY_MESSAGE_PROCESSING' If set, processing of D-Bus messages is delayed until g_dbus_connection_start_message_processing() is called.
---| 'AUTHENTICATION_REQUIRE_SAME_USER' When authenticating as a server, require the UID of the peer to be the same as the UID of the server. (Since: 2.68)
---| 'FLAGS_CROSS_NAMESPACE' When authenticating, try to use protocols that work across a Linux user namespace boundary
---@alias GDBusCallFlags
---| "NONE" No flags
---| 'NO_AUTO_START' Don't start the message bus if it's not already running.
---| 'ALLOW_INTERACTIVE_AUTHORIZATION' Allow interaction with the user when the message bus is not owned by the current user.
---@alias GDBusSignalFlags
---| "NONE" No flags
---| 'NO_MATCH_RULE' Don't match the rule for the given member.
---| 'MATCH_ARG0_NAMESPACE' Match the rule for the given member, but only if the argument 0 is a namespace.
---| 'MATCH_ARG0_PATH' Match the rule for the given member, but only if the argument 0 is a path.
---@alias GDBusSendMessageFlags
---| "NONE" No flags
---| 'PRESERVE_SERIAL' Preserve the serial of the message.

---@alias GDBusSignalCallback fun(self: GDBusConnection, sender?: string, object_path: string, interface_name: string, signal_name: string, parameters: GVariant)

---@class GCredentialsStatic
---@field new fun(): GCredentials
---@class GCredentials -- TODO:

---@class GDBusAuthObserverStatic
---@field new fun(): GDBusAuthObserver

---@class GDBusAuthObserver
---@field allow_mechanism fun(self: GDBusAuthObserver, mechanism: string)
---@field authorize_authenticated_peer fun(self: GDBusAuthObserver, stream: GIOStream, credentials?: GCredentials)

---@class GDBusConnectionStatic
---@field new fun(stream: GIOStream, guid?: string, flags: Flags<GDBusConnectionFlags>, observer?: GDBusAuthObserver, cancellable?: GCancellable, callback: GAsyncReadyCallback<GDBusConnectionStatic>)
---@field new_finish fun(res: GAsyncResult): GDBusConnection?, GError?
---@field new_for_address fun(address: string, flags: Flags<GDBusConnectionFlags>, observer?: GDBusAuthObserver, cancellable?: GCancellable, callback: GAsyncReadyCallback<GDBusConnectionStatic>)
---@field new_for_address_finish fun(res: GAsyncResult): GDBusConnection?, GError?
---@field new_for_address_sync fun(address: string, flags: Flags<GDBusConnectionFlags>, observer?: GDBusAuthObserver, cancellable?: GCancellable): GDBusConnection?, GError?
---@field new_sync fun(stream: GIOStream, guid?: string, flags: Flags<GDBusConnectionFlags>, observer?: GDBusAuthObserver, cancellable?: GCancellable): GDBusConnection?, GError?

---@class GDBusConnection
---@field call fun(self: GDBusConnection, bus_name?: string, object_path: string, interface_name: string, method_name: string, parameters?: GVariant, reply_type?: GVarientType, flags: Flags<GDBusCallFlags>, timeout_msec: integer, cancellable?: GCancellable, callback: GAsyncReadyCallback<GDBusConnection>)
---@field call_finish fun(self: GDBusConnection, res: GAsyncResult): GVariant?, GError?
---@field call_sync fun(self: GDBusConnection, bus_name?: string, object_path: string, interface_name: string, method_name: string, parameters?: GVariant, reply_type?: GVarientType, flags: Flags<GDBusCallFlags>, timeout_msec: integer, cancellable?: GCancellable): GVariant?, GError?
---@field close_sync fun(self: GDBusConnection, cancellable?: GCancellable): boolean, GError?
---@field close fun(self: GDBusConnection, cancellable?: GCancellable, callback: GAsyncReadyCallback<GDBusConnection>)
---@field close_finish fun(self: GDBusConnection, res: GAsyncResult): boolean, GError?
---@field signal_subscribe fun(self: GDBusConnection, sender?: string, interface_name?: string, member?: string, object_path?: string, arg0?: string, flags: Flags<GDBusSignalFlags>, callback: GDBusSignalCallback): id: integer
---@field signal_unsubscribe fun(self: GDBusConnection, id: integer)
---@field send_message_with_reply_sync fun(self: GDBusConnection, message: GDBusMessage, flags: Flags<GDBusSendMessageFlags>, timeout_msec: integer, cancellable?: GCancellable): GDBusMessage?, out_serial: integer|GError
---@field send_message_with_reply fun(self: GDBusConnection, message: GDBusMessage, flags: Flags<GDBusSendMessageFlags>, timeout_msec: integer, cancellable?: GCancellable, callback: GAsyncReadyCallback<GDBusConnection>): out_serial: integer
---@field send_message_with_reply_finish fun(self: GDBusConnection, res: GAsyncResult): GDBusMessage?, out_serial: integer|GError
---@field send_message fun(self: GDBusConnection, message: GDBusMessage, flags: Flags<GDBusSendMessageFlags>, cancellable?: GCancellable): out_serial: integer|false, GError?
