---@alias GSeekType "SET"|"CUR"|"END"

---@class GSeekable
---@field can_seek fun(self: GSeekable): boolean
---@field can_truncate fun(self: GSeekable): boolean
---@field seek fun(self: GSeekable, offset: integer, type: Enum<GSeekType>): suc: boolean, GError?
---@field tell fun(self: GInputStream): integer -- Zero if not seekable
---@field truncate fun(self: GSeekable, offset: integer, cancellable?: GCancellable): boolean, GError?

---@class GPollableInputStream: GInputStream
---@field can_poll fun(self: GPollableInputStream): boolean
---@field create_source fun(self: GPollableInputStream, cancellable?: GCancellable): GSource
---@field is_readable fun(self: GPollableInputStream): boolean
---TODO: types
---@field read_nonblocking fun(self: GPollableInputStream, buffer: string, count: integer): size: integer, GError?

---@class GInputStream GInputStream is a base class for implementing streaming input.
---@field close fun(self: GInputStream, cancellable?: GCancellable): boolean, GError?
---@field close_async fun(self: GInputStream, io_priority: integer, cancellable?: GCancellable, callback?: GAsyncReadyCallback<GInputStream>)
---@field is_closed fun(self: GInputStream): boolean
---@field read_bytes_async fun(self: GInputStream, count: integer, io_priority: integer, cancellable?: GCancellable, callback?: GAsyncReadyCallback<GInputStream>)
---@field read_bytes_finish fun(self: GInputStream, task: GAsyncResult): GBytes, GError?
---@field skip fun(self: GInputStream, count: integer, cancellable?: GCancellable): skpped: integer, GError?
---@field skip_async fun(self: GInputStream, count: integer, io_priority: integer, cancellable?: GCancellable, callback?: GAsyncReadyCallback<GInputStream>)
---@field skip_finish fun(self: GInputStream, task: GAsyncResult): skpped: integer, GError?

---@class GFilterInputStream: GInputStream Base class for input stream implementations that perform some kind of filtering operation
---@field get_base_stream fun(self: GFilterInputStream): GInputStream
---@field get_close_base_stream fun(self: GFilterInputStream): boolean
---@field set_close_base_stream fun(self: GFilterInputStream, close_base: boolean)

---@class GBufferedInputStreamStatic
---@field new fun(base_stream: GInputStream): GBufferedInputStream
---@field new_sized fun(base_stream: GInputStream, size: integer): GBufferedInputStream

---@class GBufferedInputStream: GFilterInputStream, GSeekable
---If count is -1 then the attempted read size is equal to the number of bytes
---that are required to fill the buffer.
-- On success, the number of bytes read into the buffer is returned. It is not
-- an error if this is not the same as the requested size, as it can happen
-- e.g. near the end of a file. Zero is returned on end of file (or if count is
-- zero), but never otherwise.
---@field fill fun(self: GBufferedInputStream, count: integer, cancellable?: GCancellable): integer, GError?
---@field fill_async fun(self: GBufferedInputStream, count: integer, io_priority: integer, cancellable?: GCancellable, callback?: GAsyncReadyCallback<GInputStream>)
---@field fill_finish fun(self: GBufferedInputStream, task: GAsyncResult): integer, GError?
---@field get_available fun(self: GBufferedInputStream): integer
---@field get_buffer_size fun(self: GBufferedInputStream): integer
---@field peek_buffer fun(self: GBufferedInputStream): string
---@field read_byte fun(self: GBufferedInputStream, cancellable?: GCancellable): integer, GError?
---Sets the size of the internal buffer of stream to size, or to the size of
---the contents of the buffer. The buffer can never be resized smaller than its
---current contents.
---@field set_buffer_size fun(self: GBufferedInputStream, size: integer)

---@class GDataInputStreamStatic
---@field new fun(stream: GInputStream): GDataInputStream

---@class GDataInputStream: GBufferedInputStream, GSeekable
---@field read_line fun(self: GDataInputStream, cancellable?: GCancellable): string?, integer|GError?
---@field read_line_async fun(self: GDataInputStream, io_priority: integer, cancellable?: GCancellable, callback?: GAsyncReadyCallback<GInputStream>)
---@field read_line_finish fun(self: GInputStream, task: GAsyncResult): line: string?, len: integer|GError?

---@class GUnixInputStreamStatic
---@field new fun(fd: integer, close_fd?: boolean): GUnixInputStream

---@class GUnixInputStream: GInputStream,GFileDescriptorBased,GPollableInputStream
---@field get_close_fd fun(self: GUnixInputStream): boolean
---@field set_close_fd fun(self: GUnixInputStream, close_fd: boolean)

---@class GMemoryInputStreamStatic
---@field new fun(): GMemoryInputStream
---@field new_from_bytes fun(bytes: GBytes): GMemoryInputStream
---@field new_from_data fun(data: integer[]): GMemoryInputStream

---@class GMemoryInputStream: GInputStream, GPollableInputStream, GSeekable
---@field add_bytes fun(self: GMemoryInputStream, bytes: GBytes)
---@field add_data fun(self: GMemoryInputStream, data: integer[])
