local colors = require('config.colors')
local M = {}

local modes = {
  ["__"] = "--",
  ["c"] = "C",
  ["i"] = "I",
  ["ic"] = "I-C",
  ["ix"] = "I-X",
  ["multi"] = "M",
  ["n"] = "N",
  ["ni"] = "(I)",
  ["no"] = "OP",
  ["R"] = "R",
  ["Rv"] = "V-R",
  ["s"] = "S",
  ["S"] = "S-L",
  [""] = "S-B",
  ["t"] = "T",
  ["v"] = "V",
  ["V"] = "V-L",
  [""] = "V-B",
}

local mode_colors = {
  n = colors.blue,
  i = colors.yellow,
  v = colors.magenta,
  [""] = colors.lightblue,
  [""] = colors.white,
  V = colors.lightblue,
  c = colors.orange,
  no = colors.magenta,
  s = colors.orange,
  S = colors.orange,
  -- [""] = colors.orange,
  ic = colors.yellow,
  R = colors.purple,
  Rv = colors.purple,
  cv = colors.orange,
  ce = colors.orange,
  r = colors.cyan,
  rm = colors.cyan,
  ["r?"] = colors.cyan,
  ["!"] = colors.cyan,
  t = colors.cyan,
}

local base_theme = {
  a = {},
  b = { bg = 'none', fg = colors.blue },
  w = { bg = 'none' },
  x = { bg = 'none', fg = colors.purple },
  y = { bg = 'none', fg = colors.light_grey },
  z = { bg = 'none', fg = colors.light_grey },
}
local theme = {
  normal = base_theme,
  insert = base_theme,
  visual = base_theme,
  replace = base_theme,
  inactive = {
    a = { bg = 'none', fg = colors.light_grey }
  },
}

local function lsp_symbol()
  return require('lspsaga.symbolwinbar'):get_winbar() or ''
end

function M.setup()
  local file_section = {
    'filename',
    path = 1,
    symbols = {
      modified = '[+]',
      readonly = '[]',
    }
  }
  require('lualine').setup {
    options = {
      icons_enabled = true,
      theme = theme,
      component_separators = '',
      section_separators = '',
      disabled_filetypes = {
        statusline = {
          'help',
          'lspsagaoutline',
          'packer',
          'NvimTree',
          'qf',
          'tsplayground',
        },
      },
      ignore_focus = {},
      always_divide_middle = true,
      globalstatus = false,
      refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
      }
    },
    sections = {
      lualine_a = {
        {
          'mode',
          fmt = function()
            return modes[vim.fn.mode()] .. ' | '
          end,
          color = function()
            local val = {
              fg = mode_colors[vim.fn.mode()],
              bg = "none",
              gui = 'bold'
            }
            return val
          end,
        },
      },
      lualine_b = { file_section },
      lualine_c = {
        {
          lsp_symbol,
          cond = function()
            return next(vim.lsp.buf_get_clients(0)) ~= nil
          end
        },
      },
      lualine_w = { { 'diagnostics', sources = { 'nvim_diagnostic' } } },
      lualine_x = { 'branch', 'diff' },
      lualine_y = { 'location' },
      lualine_z = { { 'progress', fmt = string.lower } },
    },
    inactive_sections = {
      lualine_a = { file_section },
      lualine_b = {},
      lualine_c = {},
      lualine_w = {},
      lualine_y = {},
      lualine_x = {},
      lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {},
    refresh = {
      statusline = 500,
    },
  }
end

return M
