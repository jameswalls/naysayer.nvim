---@class Naysayer
---@field options NaysayerOptions
---@field setup fun(opts: NaysayerOptions?)

---@alias CtpFlavor "naysayer" | "auto"
---@alias CtpColor "monokai_yellow" | "monokai_orange" | "monokai_red" | "monokai_magenta" | "monokai_blue" | "monokai_green" | "monokai_cyan" | "monokai_violet" | "blue" | "white" | "red" | "brown" | "brown65" | "yellow" | "green" | "light_green" | "tiffany" | "mint" | "dark_green" | "darker_green" | "darkest_green" | "grey"
---@class CtpFlavors<T>: {all: T, naysayer: T}
---@class CtpColors<T>: {monokai_yellow: T, monokai_orange: T, monokai_red: T, monokai_magenta: T, monokai_blue: T, monokai_green: T, monokai_cyan: T, monokai_violet: T, blue: T, white: T, red: T, brown: T, brown65: T, yellow: T, green: T, light_green: T, tiffany: T, mint: T, dark_green: T, darker_green: T, darkest_green: T, grey: T, none: T}

---@class NaysayerOptions
-- Changes the flavor based on the background. See `:h background` for more info.
---@field background CtpBackground?
-- By default naysayer writes the compiled results into the system's cache directory.
-- You can change the cache dir by changing this value.
---@field compile_path string?
-- Whether to enable transparency.
---@field transparent_background boolean?
-- Toggle the `~` characters after the end of buffers.
---@field show_end_of_buffer boolean?
-- If true, sets terminal colors (e.g. `g:terminal_color_0`).
---@field term_colors boolean?
-- Workaround for kitty transparency issue: https://github.com/kovidgoyal/kitty/issues/2917
---@field kitty boolean?
-- Settings for dimming of inactive windows.
---@field dim_inactive CtpDimInactive?
-- Disables all italic styles.
---@field no_italic boolean?
-- Disables all bold styles.
---@field no_bold boolean?
-- Disables all underline styles.
---@field no_underline boolean?
-- Handles the style of general hl groups (see `:h highlight-groups`).
---@field styles CtpStyles?
-- Should default integrations be used.
---@field default_integrations boolean?
-- Toggle integrations. Integrations allow Naysayer to set the theme of various plugins.
---@field integrations CtpIntegrations?
-- Naysayer colors can be overwritten here.
---@field color_overrides CtpColors | CtpFlavors<CtpColors<string>> | nil
-- Naysayer highlights can be overwritten here.
---@field highlight_overrides CtpHighlightOverrides?
-- Global highlight overrides.
---@field custom_highlights CtpHighlightOverrideFn | {[string]: CtpHighlight} | nil
-- The default flavor to use on startup.
---@field flavour CtpFlavor?

---@class CtpBackground
-- Naysayer flavor to use when `:set background=dark` is set.
---@field dark CtpFlavor?
-- Naysayer flavor to use when `:set background=light` is set.
---@field light CtpFlavor?

---@class CtpDimInactive
-- Whether to dim inactive windows.
---@field enabled boolean
-- Whether to darken or lighten inactive windows.
---@field shade "dark" | "light" | nil
-- Percentage of the shade to apply to the inactive window
---@field percentage number?

---@class CtpStyles
-- Change the style of comments.
---@field comments CtpHighlightArgs[]?
-- Change the style of conditionals.
---@field conditionals CtpHighlightArgs[]?
-- Change the style of loops.
---@field loops CtpHighlightArgs[]?
-- Change the style of functions.
---@field functions CtpHighlightArgs[]?
-- Change the style of keywords.
---@field keywords CtpHighlightArgs[]?
-- Change the style of strings.
---@field strings CtpHighlightArgs[]?
-- Change the style of variables.
---@field variables CtpHighlightArgs[]?
-- Change the style of numbers.
---@field numbers CtpHighlightArgs[]?
-- Change the style of booleans.
---@field booleans CtpHighlightArgs[]?
-- Change the style of properties.
---@field properties CtpHighlightArgs[]?
-- Change the style of types.
---@field types CtpHighlightArgs[]?
-- Change the style of operators.
---@field operators CtpHighlightArgs[]?
-- Change the style of miscs.
---@field miscs CtpHighlightArgs[]?

---@class CtpNativeLspStyles
-- Change the style of LSP errors.
---@field errors CtpHighlightArgs[]?
-- Change the style of LSP hints.
---@field hints CtpHighlightArgs[]?
-- Change the style of LSP warnings.
---@field warnings CtpHighlightArgs[]?
-- Change the style of LSP information.
---@field information CtpHighlightArgs[]?

---@class CtpNativeLspInlayHints
-- Toggle the background of inlay hints.
---@field background boolean?

---@class CtpIntegrations
---@field aerial boolean?
---@field alpha boolean?
---@field barbar boolean?
-- Use this to set it up:
--
-- ```lua
-- require("barbecue").setup {
-- -- valid options:
-- -- "naysayer-naysayer"
--   theme = "naysayer",
-- }
---```
---@field barbecue CtpIntegrationBarbecue | boolean?
---@field beacon boolean?
---@field cmp boolean?
-- `coc.nvim` links to `native_lsp` highlight groups, so you can use
-- `native_lsp.virtual_text` and `native_lsp.underlines` to style diagnostics.
---@field coc_nvim boolean?
-- ```lua
-- local sign = vim.fn.sign_define
--
-- sign("DapBreakpoint", { text = "●", texthl = "DapBreakpoint", linehl = "", numhl = ""})
-- sign("DapBreakpointCondition", { text = "●", texthl = "DapBreakpointCondition", linehl = "", numhl = ""})
-- sign("DapLogPoint", { text = "◆", texthl = "DapLogPoint", linehl = "", numhl = ""})
-- ```
---@field dap boolean?
---@field dap_ui boolean?
---@field dashboard boolean?
---@field dropbar CtpIntegrationDropbar | boolean?
---@field fern boolean?
-- Set `notification.window.winblend` to `0` in your `fidget` config:
--
-- ```lua
-- require("fidget").setup {
--   notification = {
--     window = { winblend = 0 },
--   }
-- }
-- ```
---@field fidget boolean?
---@field flash boolean?
---@field gitgutter boolean?
---@field gitsigns boolean?
---@field harpoon boolean?
---@field headlines boolean?
---@field hop boolean?
---@field illuminate CtpIntegrationIlluminate | boolean?
---@field indent_blankline CtpIntegrationIndentBlankline | boolean?
---@field leap boolean?
---@field lightspeed boolean?
-- For custom Lsp kind icon and colors, adjust your `lspsaga` config:
--
-- ```lua
-- require("lspsaga").setup {
--    ui = {
--        kind = require("naysayer.groups.integrations.lsp_saga").custom_kind(),
--    },
-- }
-- ```
---@field lsp_saga boolean?
---@field lsp_trouble boolean?
---@field markdown boolean?
---@field mason boolean?
---@field native_lsp CtpIntegrationNativeLsp | boolean?
-- You **NEED** to enable highlight in your `nvim-navic` config or it won't work:
--
-- ```lua
-- require("nvim-navic").setup {
--		highlight = true
-- }
-- ```
---@field navic CtpIntegrationNavic | boolean?
---@field neogit boolean?
---@field neotest boolean?
---@field neotree boolean?
---@field noice boolean?
---@field notify boolean?
---@field nvimtree boolean?
---@field octo boolean?
---@field overseer boolean?
---@field pounce boolean?
---@field rainbow_delimiters boolean?
---@field sandwich boolean?
---@field semantic_tokens boolean?
---@field symbols_outline boolean?
---@field telekasten boolean?
---@field telescope CtpIntegrationTelescope | boolean?
---@field treesitter boolean?
---@field treesitter_context boolean?
---@field ts_rainbow boolean?
---@field ts_rainbow2 boolean?
---@field vim_sneak boolean?
---@field vimwiki boolean?
---@field which_key boolean?
---@field window_picker boolean?

---@class CtpIntegrationBarbecue
--  Whether to use the alternative background.
---@field alt_background boolean?
-- Whether the basename should be bold.
---@field bold_basename boolean?
-- Whether the context should be dimmed.
---@field dim_context boolean?
-- Whether the directory name should be dimmed.
---@field dim_dirname boolean?

---@class CtpIntegrationDropbar
-- Whether to enable the dropbar integration.
---@field enabled boolean
-- Set to true to apply color to the text in dropbar, false to only apply it to the icons.
---@field color_mode boolean?

---@class CtpIntegrationIndentBlankline
-- Whether to enable the integration.
---@field enabled boolean
-- Sets the color of the scope line
---@field scope_color CtpColor?
-- Enables char highlights per indent level.
-- Follow the instructions on the plugins GitHub repo to set it up.
---@field colored_indent_levels boolean?

---@class CtpIntegrationMini
-- Whether to enable the integration.
---@field enabled boolean
-- Sets the color of the scope line
---@field indentscope_color CtpColor?

---@class CtpIntegrationNativeLsp
-- Whether to enable the Native LSP integration.
---@field enabled boolean
-- Styles to apply to virtual text.
---@field virtual_text CtpNativeLspStyles?
-- Styles to apply to underlines.
---@field underlines CtpNativeLspStyles?
-- Inlay hints options.
---@field inlay_hints CtpNativeLspInlayHints?

---@class CtpIntegrationNavic
-- Whether to enable the navic integration.
---@field enabled boolean
-- Override the background color for navic.
---@field custom_bg CtpColor | "NONE" | "lualine" | nil

---@class CtpIntegrationTelescope
-- Whether to enable the telescope integration
---@field enabled boolean?
-- The style of Telescope
---@field style "classic" | "nvchad" | nil

---@class CtpIntegrationIlluminate
-- Whether to enable the vim-illuminate integration
---@field enabled boolean?
-- Whether to standout IlluminatedWordWrite hl group
---@field lsp boolean?

---@alias CtpHighlightArgs "bold" | "underline" | "undercurl" | "underdouble" | "underdotted" | "underdashed" | "strikethrough" | "reverse" | "inverse" | "italic" | "standout" | "altfont" | "nocombine" | "NONE"
---@alias CtpHighlightOverrideFn fun(colors: CtpColors<string>): { [string]: CtpHighlight}
---@alias CtpHighlightOverrides CtpFlavors<CtpHighlightOverrideFn>

---@class CtpHighlight
---@field fg string?
---@field bg string?
---@field style CtpHighlightArgs[]?
---@field link string?
