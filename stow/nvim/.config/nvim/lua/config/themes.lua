local colors = require('config.colors')

-- Base highlights to override themes to my preferences
local base = {
  CursorLine             = { bg = 'none', fg = 'none' },
  -- Avoid changing the foreground color from the main theme
  FloatBorder            = { link = 'XMenuBorder' },
  MatchParen             = { bg = 'none', bold = true },
  Visual                 = { bg = colors.grey, fg = 'none' },
  ActionPreviewBorder    = { link = 'XMenuBorder' },
  ActionPreviewNormal    = { link = 'XMenu' },
  CallHierarchyBorder    = { link = 'XMenuBorder' },
  CallHierarchyNormal    = { link = 'XMenu' },
  CodeActionBorder       = { link = 'XMenuBorder' },
  CodeActionNormal       = { link = 'XMenu' },
  DefinitionBorder       = { link = 'XMenuBorder' },
  DefinitionNormal       = { link = 'XMenu' },
  FinderBorder           = { link = 'XMenuBorder' },
  FinderNormal           = { link = 'XMenu' },
  HoverBorder            = { link = 'XMenuBorder' },
  HoverNormal            = { link = 'XMenu' },
  OutlinePreviewBorder   = { link = 'XMenuBorder' },
  OutlinePreviewNormal   = { link = 'XMenu' },
  RenameBorder           = { link = 'XMenuBorder' },
  RenameNormal           = { link = 'XMenu' },
  TerminalBorder         = { link = 'XMenuBorder' },
  TerminalNormal         = { link = 'XMenu' },
  SagaNormal             = { link = 'XMenu' },
  SagaBorder             = { link = 'XMenuBorder' },
  -- Telescope
  TelescopeBorder        = { link = 'XMenuBorder' },
  TelescopePromptBorder  = { link = 'XMenuBorder' },
  TelescopePromptNormal  = { link = 'XMenu', fg = colors.foreground },
  TelescopePromptPrefix  = { link = 'XMenu', fg = colors.foreground },
  TelescopeNormal        = { bg = colors.background },
  TelescopePreviewBorder = { link = 'XMenuBorder' },
  TelescopePreviewNormal = { link = 'XMenu', fg = colors.foreground },
  TelescopePreviewTitle  = { fg = colors.background, bg = colors.light_orange },
  TelescopePreviewLine   = { fg = colors.background, bg = colors.orange },
  TelescopePromptTitle   = { fg = colors.background, bg = colors.light_orange },
  TelescopeResultsTitle  = { fg = colors.background, bg = colors.light_orange },
  TelescopeResultsBorder = { link = 'XMenuBorder' },
  TelescopeResultsNormal = { link = 'XMenu' },
}

local theme = {
  -- Transparent background
  Conceal                    = { bg = 'none', fg = colors.foreground },
  FoldCoumn                  = { bg = 'none' },
  LineNr                     = { bg = 'none', fg = colors.grey },
  MsgArea                    = { bg = 'none', fg = colors.foreground },
  NonText                    = { bg = 'none', fg = colors.light_grey },
  Normal                     = { bg = 'none', fg = colors.foreground },
  NormalNC                   = { bg = 'none', fg = colors.foreground },
  SignColumn                 = { bg = 'none' },
  WinSeparator               = { bg = 'none', fg = colors.grey },
  -- Language Syntax
  Boolean                    = { fg = colors.grey },
  Character                  = { fg = colors.yellow },
  Comment                    = { fg = colors.light_grey },
  Conditional                = { fg = colors.blue },
  Constant                   = { fg = colors.grey },
  Debug                      = { fg = colors.green },
  Define                     = { fg = colors.green },
  Delimiter                  = { fg = colors.grey },
  Error                      = { fg = colors.red },
  Exception                  = { fg = colors.dark_orange },
  Float                      = { fg = colors.light_pink },
  Function                   = { fg = colors.foreground },
  Identifier                 = { fg = colors.foreground },
  Ignore                     = { fg = colors.light_grey },
  Include                    = { fg = colors.dark_orange },
  Keyword                    = { fg = colors.blue },
  Label                      = { fg = colors.grey },
  Macro                      = { fg = colors.dark_orange },
  Number                     = { fg = colors.light_pink },
  Operator                   = { fg = colors.purple },
  PreCondit                  = { fg = colors.dark_orange },
  PreProc                    = { fg = colors.dark_orange },
  Repeat                     = { fg = colors.blue },
  Special                    = { fg = colors.dark_orange },
  SpecialChar                = { fg = colors.dark_orange },
  SpecialComment             = { fg = colors.orange },
  Statement                  = { fg = colors.blue },
  StorageClass               = { fg = colors.light_orange },
  String                     = { fg = colors.yellow },
  Structure                  = { fg = colors.light_orange },
  Tag                        = { fg = colors.orange },
  Todo                       = { fg = colors.orange, bold = true },
  Type                       = { fg = colors.light_orange },
  Typedef                    = { fg = colors.foreground },
  Underlined                 = { fg = colors.foreground },
  -- Rest
  ColorColumn                = { bg = colors.dark_grey },
  Cursor                     = { bg = colors.accent },
  CursorColumn               = { bg = 'none', fg = colors.accent },
  CursorLine                 = { bg = 'none', fg = 'none' },
  CursorLineNr               = { bg = 'none', fg = colors.light_pink },
  Directory                  = { fg = colors.cyan, bold = true },
  ErrorMsg                   = { bg = 'none', fg = colors.red },
  FloatBorder                = { bg = colors.background, fg = colors.background },
  IncSearch                  = { bg = colors.accent, fg = colors.foreground },
  MatchParen                 = { fg = colors.accent, bg = 'none', bold = true },
  NormalFloat                = { bg = colors.background },
  Pmenu                      = { link = 'XMenu' },
  Search                     = { bg = colors.accent },
  SpellBad                   = { bg = 'none', fg = 'none', undercurl = true, ctermbg = 'none', ctermfg = 'none' },
  SpellLocal                 = { bg = 'none', fg = 'none', undercurl = true, ctermbg = 'none', ctermfg = 'none' },
  SpellRare                  = { bg = 'none', fg = 'none', undercurl = true, ctermbg = 'none', ctermfg = 'none' },
  StatusLine                 = { fg = colors.foreground, bg = 'none' },
  StatusLineNC               = { fg = 'none', bg = 'none' },
  Title                      = { fg = colors.blue, bg = '', bold = true },
  VertSplit                  = { bg = 'none', fg = colors.grey },
  Visual                     = { bg = colors.grey, fg = 'none' },
  -- Diagnostic

  DiagnosticBorder           = { link = 'XMenu' },
  DiagnosticNormal           = { link = 'XMenu' },
  DiagnosticError            = { fg = colors.red },
  DiagnosticFloatingError    = { link = 'NormalFloat' },
  DiagnosticFloatingHint     = { link = 'NormalFloat' },
  DiagnosticFloatingInfo     = { link = 'NormalFloat' },
  DiagnosticFloatingWarn     = { link = 'NormalFloat' },
  DiagnosticSignHint         = { fg = colors.grey, bold = true, bg = 'none' },
  DiagnosticUnderlineError   = { undercurl = true },
  DiagnosticVirtualTextHint  = { bg = 'none' },
  DiagnosticWarn             = { fg = colors.yellow },
  -- nvim cmp
  CmpItemAbbr                = { fg = colors.foreground },
  CmpItemAbbrMatch           = { fg = colors.dark_orange },
  CmpItemAbbrMatchFuzzy      = { fg = colors.dark_orange },
  CmpBorder                  = { link = 'FloatBorder' },
  CmpDocBorder               = { link = 'FloatBorder' },
  CmpItemMenuDefault         = { link = 'NormalFloat' },
  CmPmenu                    = { link = 'NormalFloat' },
  -- cmp item kinds
  CmpItemKindConstant        = { fg = colors.light_pink },
  CmpItemKindFunction        = { fg = colors.blue },
  CmpItemKindIdentifier      = { fg = colors.purple },
  CmpItemKindField           = { fg = colors.dark_orange },
  CmpItemKindVariable        = { fg = colors.purple },
  CmpItemKindSnippet         = { fg = colors.light_pink },
  CmpItemKindText            = { fg = colors.foreground },
  CmpItemKindStructure       = { fg = colors.blue },
  CmpItemKindType            = { fg = colors.orange },
  CmpItemKindKeyword         = { fg = colors.blue },
  CmpItemKindMethod          = { fg = colors.purple },
  CmpItemKindConstructor     = { fg = colors.blue },
  CmpItemKindFolder          = { fg = colors.blue },
  CmpItemKindModule          = { fg = colors.dark_orange },
  CmpItemKindProperty        = { fg = colors.dark_orange },
  CmpItemKindEnum            = { fg = colors.blue },
  CmpItemKindUnit            = { fg = colors.green },
  CmpItemKindClass           = { fg = colors.blue },
  CmpItemKindFile            = { fg = colors.blue },
  CmpItemKindInterface       = { fg = colors.blue },
  CmpItemKindColor           = { fg = colors.yellow },
  CmpItemKindReference       = { fg = colors.blue },
  CmpItemKindEnumMember      = { fg = colors.green },
  CmpItemKindStruct          = { fg = colors.blue },
  -- CmpItemKindValue = { fg = "" },
  -- CmpItemKindEvent = { fg = "" },
  CmpItemKindOperator        = { fg = colors.purple },
  CmpItemKindTypeParameter   = { fg = colors.light_pink },
  CmpItemKindCopilot         = { fg = colors.green },
  -- LSPSaga
  OutlinePreviewBorder       = { link = 'NormalFloat' },
  OutlinePreviewNormal       = { link = 'FloatBorder' },
  -- Diffview
  DiffViewSignColumn         = { bg = 'none' },
  -- Treesitter

  -- ['@string'] = { fg = colors.yellow, bg = '' },
  ['@boolean']               = { fg = colors.dark_yellow },
  ['@character']             = { fg = colors.foreground },
  ['@character.special']     = { fg = colors.dark_orange },
  ['@comment']               = { link = 'Comment' },
  ['@conditional']           = { fg = colors.blue },
  ['@constant']              = { fg = colors.foreground },
  ['@constant.builtin']      = { fg = colors.dark_yellow },
  ['@constant.macro']        = { fg = colors.dark_orange },
  ['@constructor']           = { fg = colors.blue },
  ['@debug']                 = { link = 'Debug' },
  ['@define']                = { link = "Define" },
  ['@exception']             = { fg = colors.dark_orange },
  ['@field']                 = { link = 'Identifier' },
  ['@field.yaml']            = { fg = colors.light_orange },
  ['@float']                 = { fg = colors.light_pink },
  ['@function']              = { link = 'Function' },
  ['@function.builtin']      = { fg = colors.dark_green },
  ['@function.macro']        = { fg = colors.dark_orange },
  ['@include']               = { fg = colors.dark_orange },
  ['@keyword']               = { link = 'Keyword' },
  ['@keyword.operator']      = { fg = colors.purple },
  ['@keyword.return']        = { fg = colors.dark_orange },
  ['@label']                 = { fg = colors.blue },
  ['@macro']                 = { fg = colors.dark_orange },
  ['@method']                = { fg = colors.foreground },
  ['@namespace']             = { fg = colors.foreground },
  ['@number']                = { link = 'Number' },
  ['@operator']              = { link = 'Operator' },
  ['@parameter']             = { fg = colors.foreground },
  ['@preproc']               = { link = 'PreProc' },
  ['@property']              = { fg = colors.foreground },
  ['@punctuation.Special']   = { fg = colors.purple },
  ['@punctuation.bracket']   = { fg = colors.purple },
  ['@punctuation.delimiter'] = { fg = colors.purple },
  ['@repeat']                = { link = 'Repeat' },
  ['@storageclass']          = { link = 'StorageClass' },
  ['@string.escape']         = { fg = colors.dark_orange },
  ['@string.regex']          = { fg = colors.green },
  ['@string.special']        = { fg = colors.dark_orange },
  ['@structure']             = { link = 'Structure' },
  ['@tag']                   = { link = 'Tag' },
  ['@tag.attribute']         = { fg = colors.foreground },
  ['@tag.delimiter']         = { fg = colors.purple },
  ['@text.danger']           = { fg = colors.dark_orange },
  ['@text.literal']          = { link = 'String' },
  ['@text.reference']        = { fg = colors.green },
  ['@text.strong']           = { bold = true },
  ['@text.title']            = { link = 'Title' },
  ['@text.todo']             = { link = 'Todo' },
  ['@text.underline']        = { link = 'Underlined' },
  ['@text.uri']              = { fg = colors.blue },
  ['@text.warning']          = { link = 'Todo' },
  ['@type']                  = { link = 'Type' },
  ['@type.definition']       = { link = 'Typedef' },
  ['@variable']              = { fg = colors.foreground },
  ['@variable.builtin']      = { fg = colors.light_orange },
}

local M = {}

local function _load(config)
  for group, hl in pairs(config) do
    if not vim.tbl_isempty(hl) then
      vim.api.nvim_set_hl(0, group, hl)
    end
  end
end

local function _load_diagnostics()
  local diagnostics = {
    DiagnosticFloatingError = vim.tbl_extend('force', vim.api.nvim_get_hl_by_name('DiagnosticFloatingError', true), { bg = colors.dark_grey }),
    DiagnosticFloatingWarn  = vim.tbl_extend('force', vim.api.nvim_get_hl_by_name('DiagnosticFloatingWarn', true), { bg = colors.dark_grey }),
    DiagnosticFloatingInfo  = vim.tbl_extend('force', vim.api.nvim_get_hl_by_name('DiagnosticFloatingInfo', true), { bg = colors.dark_grey }),
    DiagnosticFloatingHint  = vim.tbl_extend('force', vim.api.nvim_get_hl_by_name('DiagnosticFloatingHint', true), { bg = colors.dark_grey }),
    DiagnosticSignError     = vim.tbl_extend('force', vim.api.nvim_get_hl_by_name('DiagnosticSignError', true), { bg = colors.dark_grey }),
    DiagnosticSignWarn      = vim.tbl_extend('force', vim.api.nvim_get_hl_by_name('DiagnosticSignWarn', true), { bg = colors.dark_grey }),
    DiagnosticSignInfo      = vim.tbl_extend('force', vim.api.nvim_get_hl_by_name('DiagnosticSignInfo', true), { bg = colors.dark_grey }),
    DiagnosticSignHint      = vim.tbl_extend('force', vim.api.nvim_get_hl_by_name('DiagnosticSignHint', true), { bg = colors.dark_grey }),
  }
  _load(diagnostics)
end

function M.setup()
  vim.api.nvim_set_hl(0, 'XMenu', { bg = colors.dark_grey, default = true })
  vim.api.nvim_set_hl(0, 'XMenuBorder', { bg = colors.dark_grey, fg = colors.dark_grey, default = true })
  vim.g.terminal_color_0 = colors.dark_grey
end

function M.load(full)
  _load(base)
  _load_diagnostics()

  if not full then
    return
  end

  _load(theme)
end

return M
