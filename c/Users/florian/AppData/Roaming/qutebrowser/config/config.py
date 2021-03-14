## qutebrowser
config.load_autoconfig(False)

# Setting dark mode
config.set("colors.webpage.darkmode.enabled", True)
#
# AltGr-Combo
c.qt.force_platform = "windows:altgr"
#
# The page to open if :open -t/-b/-w is used without URL. Use
# `about:blank` for a blank page.
c.url.default_page = "about:blank"

# Definitions of search engines which can be used via the address bar.
# Maps a searchengine name (such as `DEFAULT`, or `ddg`) to a URL with a
# `{}` placeholder. The placeholder will be replaced by the search term,
# use `{{` and `}}` for literal `{`/`}` signs. The searchengine named
# `DEFAULT` is used when `url.auto_search` is turned on and something
# else than a URL was entered to be opened. Other search engines can be
# used by prepending the search engine name to the search term, e.g.
# `:open google qutebrowser`.
c.url.searchengines = {"DEFAULT": "https://duckduckgo.com/?q=!{}"}

# The page(s) to open at the start.
c.url.start_pages = "file:///C:/Users/Florian/Startpage/index.html"

config.unbind("<ctrl+tab>")
config.bind("<ctrl+tab>", "tab-next")
config.bind("<ctrl+shift+tab>", "tab-prev")

config.unbind("ZQ")
config.unbind("ZZ")
config.unbind("<ctrl+q>")
config.bind("<ctrl+q>", "wq")
config.bind(";o", "spawn chrome {url}")

# Whether quitting the application requires a confirmation.
# Valid values:
#   - always: Always show a confirmation.
#   - multiple-tabs: Show a confirmation if multiple tabs are opened.
#   - downloads: Show a confirmation if downloads are running
#   - never: Never show a confirmation.
c.confirm_quit = ["multiple-tabs"]
c.tabs.last_close = "close"

# The directory to save downloads to. If unset, a sensible os-specific
# default is used.
c.downloads.location.directory = "%USERPROFILE%/Desktop"

# The editor (and arguments) to use for the `open-editor` command. `{}`
# gets replaced by the filename of the file to be edited.
# c.editor.command = ["c:\Users\Florian\bin\openwithvim_totalcmd.bat '{}'"]

# Automatically enter insert mode if an editable element is focused
# after loading the page.
c.input.insert_mode.auto_load = True

#Timeout (in milliseconds) for partially typed key bindings. If the current input forms only partial matches, the keystring will be cleared after this time.
# Type: Int
# Default: 5000
c.input.partial_timeout = 0

# Open new tabs (middleclick/ctrl+click) in the background.
c.tabs.background = True

config.unbind('m')
config.unbind('M')
config.bind('M', 'hint links spawn mpv {url} {hint-url}')
config.bind('m', 'spawn mpv {url}')
config.bind('F', 'hint all tab-fg')
config.bind(';f', 'hint all tab-fg')
config.bind(';b', 'hint all tab-bg')

# config.bind("<ctrl+j>", "download-clear")












# base16-qutebrowser (https://github.com/theova/base16-qutebrowser)
# Base16 qutebrowser template by theova
# Ocean scheme by Chris Kempson (http://chriskempson.com)

base00 = "#2b303b"
base01 = "#343d46"
base02 = "#4f5b66"
base03 = "#65737e"
base04 = "#a7adba"
base05 = "#c0c5ce"
base06 = "#dfe1e8"
base07 = "#eff1f5"
base08 = "#bf616a"
base09 = "#d08770"
base0A = "#ebcb8b"
base0B = "#a3be8c"
base0C = "#96b5b4"
base0D = "#8fa1b3"
base0E = "#b48ead"
base0F = "#ab7967"

# set qutebrowser colors

# Text color of the completion widget. May be a single color to use for
# all columns or a list of three colors, one for each column.
c.colors.completion.fg = base05

# Background color of the completion widget for odd rows.
c.colors.completion.odd.bg = base01

# Background color of the completion widget for even rows.
c.colors.completion.even.bg = base00

# Foreground color of completion widget category headers.
c.colors.completion.category.fg = base0A

# Background color of the completion widget category headers.
c.colors.completion.category.bg = base00

# Top border color of the completion widget category headers.
c.colors.completion.category.border.top = base00

# Bottom border color of the completion widget category headers.
c.colors.completion.category.border.bottom = base00

# Foreground color of the selected completion item.
c.colors.completion.item.selected.fg = base05

# Background color of the selected completion item.
c.colors.completion.item.selected.bg = base02

# Top border color of the selected completion item.
c.colors.completion.item.selected.border.top = base02

# Bottom border color of the selected completion item.
c.colors.completion.item.selected.border.bottom = base02

# Foreground color of the matched text in the selected completion item.
c.colors.completion.item.selected.match.fg = base0B

# Foreground color of the matched text in the completion.
c.colors.completion.match.fg = base0B

# Color of the scrollbar handle in the completion view.
c.colors.completion.scrollbar.fg = base05

# Color of the scrollbar in the completion view.
c.colors.completion.scrollbar.bg = base00

# Background color of disabled items in the context menu.
c.colors.contextmenu.disabled.bg = base01

# Foreground color of disabled items in the context menu.
c.colors.contextmenu.disabled.fg = base04

# Background color of the context menu. If set to null, the Qt default is used.
c.colors.contextmenu.menu.bg = base00

# Foreground color of the context menu. If set to null, the Qt default is used.
c.colors.contextmenu.menu.fg =  base05

# Background color of the context menu’s selected item. If set to null, the Qt default is used.
c.colors.contextmenu.selected.bg = base02

#Foreground color of the context menu’s selected item. If set to null, the Qt default is used.
c.colors.contextmenu.selected.fg = base05

# Background color for the download bar.
c.colors.downloads.bar.bg = base00

# Color gradient start for download text.
c.colors.downloads.start.fg = base00

# Color gradient start for download backgrounds.
c.colors.downloads.start.bg = base0D

# Color gradient end for download text.
c.colors.downloads.stop.fg = base00

# Color gradient stop for download backgrounds.
c.colors.downloads.stop.bg = base0C

# Foreground color for downloads with errors.
c.colors.downloads.error.fg = base08

# Font color for hints.
c.colors.hints.fg = base00

# Background color for hints. Note that you can use a `rgba(...)` value
# for transparency.
c.colors.hints.bg = base0A

# Font color for the matched part of hints.
c.colors.hints.match.fg = base05

# Text color for the keyhint widget.
c.colors.keyhint.fg = base05

# Highlight color for keys to complete the current keychain.
c.colors.keyhint.suffix.fg = base05

# Background color of the keyhint widget.
c.colors.keyhint.bg = base00

# Foreground color of an error message.
c.colors.messages.error.fg = base00

# Background color of an error message.
c.colors.messages.error.bg = base08

# Border color of an error message.
c.colors.messages.error.border = base08

# Foreground color of a warning message.
c.colors.messages.warning.fg = base00

# Background color of a warning message.
c.colors.messages.warning.bg = base0E

# Border color of a warning message.
c.colors.messages.warning.border = base0E

# Foreground color of an info message.
c.colors.messages.info.fg = base05

# Background color of an info message.
c.colors.messages.info.bg = base00

# Border color of an info message.
c.colors.messages.info.border = base00

# Foreground color for prompts.
c.colors.prompts.fg = base05

# Border used around UI elements in prompts.
c.colors.prompts.border = base00

# Background color for prompts.
c.colors.prompts.bg = base00

# Background color for the selected item in filename prompts.
c.colors.prompts.selected.bg = base02

# Foreground color of the statusbar.
c.colors.statusbar.normal.fg = base0B

# Background color of the statusbar.
c.colors.statusbar.normal.bg = base00

# Foreground color of the statusbar in insert mode.
c.colors.statusbar.insert.fg = base00

# Background color of the statusbar in insert mode.
c.colors.statusbar.insert.bg = base0D

# Foreground color of the statusbar in passthrough mode.
c.colors.statusbar.passthrough.fg = base00

# Background color of the statusbar in passthrough mode.
c.colors.statusbar.passthrough.bg = base0C

# Foreground color of the statusbar in private browsing mode.
c.colors.statusbar.private.fg = base00

# Background color of the statusbar in private browsing mode.
c.colors.statusbar.private.bg = base01

# Foreground color of the statusbar in command mode.
c.colors.statusbar.command.fg = base05

# Background color of the statusbar in command mode.
c.colors.statusbar.command.bg = base00

# Foreground color of the statusbar in private browsing + command mode.
c.colors.statusbar.command.private.fg = base05

# Background color of the statusbar in private browsing + command mode.
c.colors.statusbar.command.private.bg = base00

# Foreground color of the statusbar in caret mode.
c.colors.statusbar.caret.fg = base00

# Background color of the statusbar in caret mode.
c.colors.statusbar.caret.bg = base0E

# Foreground color of the statusbar in caret mode with a selection.
c.colors.statusbar.caret.selection.fg = base00

# Background color of the statusbar in caret mode with a selection.
c.colors.statusbar.caret.selection.bg = base0D

# Background color of the progress bar.
c.colors.statusbar.progress.bg = base0D

# Default foreground color of the URL in the statusbar.
c.colors.statusbar.url.fg = base05

# Foreground color of the URL in the statusbar on error.
c.colors.statusbar.url.error.fg = base08

# Foreground color of the URL in the statusbar for hovered links.
c.colors.statusbar.url.hover.fg = base05

# Foreground color of the URL in the statusbar on successful load
# (http).
c.colors.statusbar.url.success.http.fg = base0C

# Foreground color of the URL in the statusbar on successful load
# (https).
c.colors.statusbar.url.success.https.fg = base0B

# Foreground color of the URL in the statusbar when there's a warning.
c.colors.statusbar.url.warn.fg = base0E

# Background color of the tab bar.
c.colors.tabs.bar.bg = base00

# Color gradient start for the tab indicator.
c.colors.tabs.indicator.start = base0D

# Color gradient end for the tab indicator.
c.colors.tabs.indicator.stop = base0C

# Color for the tab indicator on errors.
c.colors.tabs.indicator.error = base08

# Foreground color of unselected odd tabs.
c.colors.tabs.odd.fg = base05

# Background color of unselected odd tabs.
c.colors.tabs.odd.bg = base01

# Foreground color of unselected even tabs.
c.colors.tabs.even.fg = base05

# Background color of unselected even tabs.
c.colors.tabs.even.bg = base00

# Background color of pinned unselected even tabs.
c.colors.tabs.pinned.even.bg = base0C

# Foreground color of pinned unselected even tabs.
c.colors.tabs.pinned.even.fg = base07

# Background color of pinned unselected odd tabs.
c.colors.tabs.pinned.odd.bg = base0B

# Foreground color of pinned unselected odd tabs.
c.colors.tabs.pinned.odd.fg = base07

# Background color of pinned selected even tabs.
c.colors.tabs.pinned.selected.even.bg = base02

# Foreground color of pinned selected even tabs.
c.colors.tabs.pinned.selected.even.fg = base05

# Background color of pinned selected odd tabs.
c.colors.tabs.pinned.selected.odd.bg = base02

# Foreground color of pinned selected odd tabs.
c.colors.tabs.pinned.selected.odd.fg = base05

# Foreground color of selected odd tabs.
c.colors.tabs.selected.odd.fg = base05

# Background color of selected odd tabs.
c.colors.tabs.selected.odd.bg = base02

# Foreground color of selected even tabs.
c.colors.tabs.selected.even.fg = base05

# Background color of selected even tabs.
c.colors.tabs.selected.even.bg = base02

# Background color for webpages if unset (or empty to use the theme's
# color).
# c.colors.webpage.bg = base00
