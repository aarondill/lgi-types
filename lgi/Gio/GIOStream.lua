---@meta
---@alias GIOStreamSpliceFlags
---| "NONE" Do not close either stream.
---| "STREAM1" Close the source stream.
---| "STREAM2" Close the destination stream.
---| "WAIT_FOR_BOTH" Wait for both splice operations to finish before calling the callback.

---@class GIOStream An abstract that represents an object that has both read and write streams
---@field clear_pending fun(self: GIOStream)
---@field close fun(self: GIOStream, cancellable?: GCancellable): boolean, GError?
---@field close_async fun(self: GIOStream, io_priority: integer, cancellable?: GCancellable, callback?: GAsyncReadyCallback<GIOStream>)
---@field close_finish fun(self: GIOStream, result: GAsyncResult): boolean, GError?
---@field get_input_stream fun(self: GIOStream): GInputStream
---@field get_output_stream fun(self: GIOStream): GOutputStream
---@field has_pending fun(self: GIOStream): boolean
---@field is_closed fun(self: GIOStream): boolean
---@field set_pending fun(self: GIOStream): boolean, GError?
---@field splice_async fun(self: GIOStream, stream2: GIOStream, flags: Flags<GIOStreamSpliceFlags>, io_priority: integer, cancellable?: GCancellable, callback?: GAsyncReadyCallback<GIOStream>)
---@field splice_finish fun(self: GIOStream, result: GAsyncResult): boolean, GError?

---@class GFileIOStream :GIOStream,GSeekable
---Gets the entity tag for the file when it has been written. This must be
---called after the stream has been written and closed, as the etag can change
---while writing.
---@field get_etag fun(self: GFileIOStream): string
---@field query_info fun(self: GFileIOStream, attributes: string, cancellable?: GCancellable): GFileInfo?, GError?
---@field query_info_async fun(self: GFileIOStream, attributes: string, io_priority: integer, cancellable?: GCancellable, callback: GAsyncReadyCallback<GFile>)
---@field query_info_finish fun(self: GFileIOStream, result: GAsyncResult): GFileInfo?, GError?
