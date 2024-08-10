---@meta
---@alias GSourceFunc fun(): boolean

---@alias GUserDirectory
--- | "DIRECTORY_DESKTOP" The user’s Desktop directory.
--- | "DIRECTORY_DOCUMENTS" The user’s Documents directory.
--- | "DIRECTORY_DOWNLOAD" The user’s Downloads directory.
--- | "DIRECTORY_MUSIC" The user’s Music directory.
--- | "DIRECTORY_PICTURES" The user’s Pictures directory.
--- | "DIRECTORY_PUBLIC_SHARE" The user’s shared directory.
--- | "DIRECTORY_TEMPLATES" The user’s Templates directory.
--- | "DIRECTORY_VIDEOS" The user’s Movies directory.

---@alias GFormatSizeFlags
--- | "FORMAT_SIZE_DEFAULT" Default format. Behave the same as g_format_size()
--- | "FORMAT_SIZE_LONG_FORMAT" Include the exact number of bytes as part of the returned string. For example, “45.6 kB (45,612 bytes)”.
--- | "FORMAT_SIZE_IEC_UNITS" Use IEC units (Ki, Mi, Gi, etc.). Use IEC (base 1024) units with “KiB”-style suffixes. IEC units should only be used for reporting things with a strong “power of 2” basis, like RAM sizes or RAID stripe sizes. Network and storage sizes should be reported in the normal SI units.
--- | "FORMAT_SIZE_BITS" Set the size as a quantity in bits, rather than bytes, and return units in bits. For example, ‘Mbit’ rather than ‘MB’.
--- | "FORMAT_SIZE_ONLY_VALUE" Return only value, without unit; this should not be used together with G_FORMAT_SIZE_LONG_FORMAT nor G_FORMAT_SIZE_ONLY_UNIT. Since: 2.74
--- | "FORMAT_SIZE_ONLY_UNIT" Return only unit, without value; this should not be used together with G_FORMAT_SIZE_LONG_FORMAT nor G_FORMAT_SIZE_ONLY_VALUE. Since: 2.74

---@class GLib
---@field SeekType EnumDefinition<GSeekType>
---@field PRIORITY_DEFAULT 0
---@field PRIORITY_HIGH -100
---@field PRIORITY_LOW 300
---@field PRIORITY_DEFAULT_IDLE 200
---@field PRIORITY_HIGH_IDLE 100
---The directory separator as a string. This is “/” on UNIX machines and “\" under Windows.
---@field DIR_SEPARATOR_S string
---The search path separator as a string. This is “:” on UNIX machines and “;” under Windows.
---@field SEARCHPATH_SEPARATOR_S string
---@field FormatSizeFlags FlagsDefinition<GFormatSizeFlags>
---@field build_filenamev fun(args: string[]): string
---@field build_pathv fun(separator: string, args: string[]): string
---Returns TRUE if the given file_name is an absolute file name. Note that this is a somewhat vague concept on Windows.
---@field path_is_absolute fun(path: string): boolean
---If file_name ends with a directory separator it gets the component before the last slash.
---@field path_get_basename fun(path: string): string
---If the file name has no directory components “.” is returned
---@field path_get_dirname fun(path: string): string
---@field get_home_dir fun(): string
---Gets the real name of the user. If the real user name cannot be determined,
---the string “Unknown” is returned.
---@field get_real_name fun(): string
---@field get_user_name fun(): string
---@field getenv fun(variable: string): string?
---@field setenv fun(var: string, val: string, overwrite: boolean): boolean
---@field unsetenv fun(var: string)
---@field find_program_in_path fun(prog: string): string?
---@field Error GErrorStatic
---@field Bytes GBytesStatic
---Gets the smallest prime number from a built-in array of primes which is
---larger than num. The built-in array of primes ranges from 11 to 13845163
---such that each prime is approximately 1.5-2 times the previous prime.
---@field spaced_primes_closest fun(num: integer): integer
---Resets the cache used for g_get_user_special_dir(), so that the latest
---on-disk version is used. Call this only if you just changed the data on disk
---yourself.
---@field reload_user_special_dirs_cache fun()
---@field UserDirectory EnumDefinition<GUserDirectory | "N_DIRECTORIES">
---Returns the full path of a special directory using its logical id.
---On UNIX this is done using the XDG special user directories. For
---compatibility with existing practise, G_USER_DIRECTORY_DESKTOP falls back to
---$HOME/Desktop when XDG special user directories have not been set up.
---@field get_user_special_dir fun(directory: Enum<GUserDirectory>): string?
---@field get_user_state_dir fun(): string
---@field get_user_runtime_dir fun(): string
---@field get_user_cache_dir fun(): string
---@field get_user_config_dir fun(): string
---@field get_user_data_dir fun(): string
---Sets the seed for the global random number generator, which is used by the g_random_* functions, to seed.
---@field random_set_seed fun(seed: integer)
---@field random_int_range fun(begin: integer, end: integer ): integer
---@field random_int fun(): integer
---@field random_double_range fun(begin: number, end: number): number
---@field random_double fun(): number
---Returns a pointer into file_name after the root component, i.e. after the “/” in UNIX or “C:" under Windows. If file_name is not an absolute path it returns NULL.
---@field path_skip_root fun(file_name: string): string?
---Return 0 if the directory already exists, or was successfully created. Returns -1 if an error occurred, with errno set.
---@field mkdir_with_parents fun(pathname: string, mode: number): 0|-1
---@field mkdir fun(pathname: string, mode: number): 0|-1
---@field rmdir fun(filename: string): 0|-1
---Note, null-embedded strings are not supported.
---@field markup_escape_text fun(text: string, length: number): string
---@field listenv fun(): string[]
---Adds a function to be called whenever there are no higher priority events
---pending. If the function returns G_SOURCE_REMOVE or FALSE it is
---automatically removed from the list of event sources and will not be called
---again.
---Remove with `GLib.Source.remove(id)`.
---@field idle_add fun(priority: integer, function: GSourceFunc): id: integer
---The monotonic time, in microseconds.
---@field get_monotonic_time fun(): number
---The number of microseconds since January 1, 1970 UTC.
---@field get_real_time fun(): number
---Determine the approximate number of threads that the system will schedule
---simultaneously for this process.
---@field get_num_processors fun(): integer
---This function consults the environment variables LANGUAGE, LC_ALL,
---category_name, and LANG to find the list of locales specified by the user.
---@field get_language_names_with_category fun(category: string): string[]
---returns g_get_language_names_with_category(“LC_MESSAGES”).
---@field get_language_names fun(): string[]
---@field get_host_name fun(): string
---@field get_current_dir fun(): string
---See format_size_full for more information and flags.
---@field format_size fun(size: integer): string
---Formats a size (for example the size of a file) into a human readable
---string. Sizes are rounded to the nearest size prefix (kB, MB, GB) and are
---displayed rounded to the nearest tenth.
---@field format_size_full fun(size: integer, flags: Flags<GFormatSizeFlags>): string
---@field chmod fun(filename: string, mode: number): 0|-1
---Returns nil if the version is compatible, otherwise returns a string describing the incompatibility.
---@field check_version fun(required_major: integer, required_minor: integer, required_micro: integer): string?
---@field chdir fun(path: string): 0|-1
---Symlinks are not followed. No IO is done.
---See https://docs.gtk.org/glib/func.canonicalize_filename.html
---@field canonicalize_filename fun(filename: string, relative_to: string?): string
