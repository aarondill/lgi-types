---@meta

---@alias GFileMonitorEvent
---|"CHANGED"
---| "CHANGES_DONE_HINT"
---| "DELETED"
---| "CREATED"
---| "ATTRIBUTE_CHANGED"
---| "PRE_UNMOUNT"
---| "UNMOUNTED"
---| "MOVED"
---| "RENAMED"
---| "MOVED_IN"
---| "MOVED_OUT"

---@alias GFileMonitorFlags
---| "NONE"
---| "WATCH_HARD_LINKS" Watch for changes to the file made via another hard link. Since 2.36.
---| "WATCH_MOVES" Watch for rename operations on a monitored directory. This
---causes G_FILE_MONITOR_EVENT_RENAMED, G_FILE_MONITOR_EVENT_MOVED_IN and
---G_FILE_MONITOR_EVENT_MOVED_OUT events to be emitted when possible. Since: 2.46.
---| "WATCH_MOUNTS"

---@alias GFileWatcherChangedHandler fun(self: GFileMonitor, file: GFile, other_file?: GFile, event_type: GFileMonitorEvent)

---@class GFileMonitor
---@field on_changed {connect: GFileWatcherChangedHandler}
---@field cancel fun(self: GFileMonitor): true
---@field is_cancelled fun(self: GFileMonitor): boolean
---@field set_rate_limit fun(self: GFileMonitor, limit_msecs: integer): true
