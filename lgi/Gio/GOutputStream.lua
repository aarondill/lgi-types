---@alias GOutputStreamSpliceFlags
---|"NONE" No flags set.
---|"CLOSE_SOURCE" Close the source stream after splicing.
---|"CLOSE_TARGET" Close the target stream after splicing.

---@class GPollableOutputStream: GOutputStream
---@field can_poll fun(self: GPollableOutputStream): boolean
---@field create_source fun(self: GPollableOutputStream, cancellable?: GCancellable): GSource
---@field is_writable fun(self: GPollableOutputStream): boolean
---@field write_nonblocking fun(self: GPollableOutputStream, buffer: string, count: integer, cancellable?: GCancellable): size: integer, GError?

---@class GOutputStream
---@field close fun(self: GOutputStream): boolean, GError?
---@field close_async fun(self: GOutputStream, io_priority: integer, cancellable?: GCancellable, callback?: GAsyncReadyCallback<GOutputStream>)
---@field close_finish fun(self: GOutputStream, task: GAsyncResult): boolean?, GError?
---@field splice fun(self: GOutputStream, source: GInputStream, flags: Flags<GOutputStreamSpliceFlags>, cancellable?: GCancellable): size: integer, GError?
---@field splice_async fun(self: GOutputStream, source: GInputStream, flags: Flags<GOutputStreamSpliceFlags>, io_priority: integer, cancellable?: GCancellable, callback?: GAsyncReadyCallback<GOutputStream>)
---@field splice_finish fun(self: GOutputStream, task: GAsyncResult): size: integer?, GError?
---@field write fun(self: GOutputStream, buffer: string, cancellable?: GCancellable): written: integer, GError?
---WARNING: This function *does not* copy the contents of `contents` and so it must not be freed. Use write_bytes_async() instead.
---@field write_async fun(self: GOutputStream, content: string, io_priority: integer, cancellable?: GCancellable, callback?: GAsyncReadyCallback<GOutputStream>)
---@field write_bytes fun(self: GOutputStream, buffer: GBytes, cancellable?: GCancellable): written: integer, GError?
---Same as write_async() but takes a GBytes input instead
---@field write_bytes_async fun(self: GOutputStream, content: GBytes, io_priority: integer, cancellable?: GCancellable, callback?: GAsyncReadyCallback<GOutputStream>)
---@field write_bytes_finish fun(self: GOutputStream, task: GAsyncResult): written: integer?, GError?
---@field write_finish fun(self: GOutputStream, task: GAsyncResult): written: integer?, GError?

---@class GFileOutputStream: GOutputStream, GSeekable

---@class GUnixOutputStreamStatic
---@field new fun(fd: integer, close_fd: boolean): GFileOutputStream

---@class GUnixOutputStream: GOutputStream, GFileDescriptorBased, GPollableOutputStream
---@field get_close_fd fun(self: GUnixOutputStream): boolean
---@field set_close_fd fun(self: GUnixOutputStream, close_fd: boolean)
