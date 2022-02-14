local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap
local set = vim.opt

local config = {

  -- Set colorscheme
  colorscheme = "nightfox",
  -- colorscheme = "Base2Tone_ForestDark",
  -- colorscheme = "kanagawa",
  -- colorscheme = "aquarium",
  -- colorscheme = "srcery",
  -- colorscheme Base2Tone_MorningDark
  -- colorscheme Base2Tone_SeaDark
  -- colorscheme Base2Tone_SpaceDark
  -- colorscheme Base2Tone_EarthDark
  -- colorscheme = "Base2Tone_ForestDark",
  -- colorscheme Base2Tone_FieldDark
  -- colorscheme Base2Tone_GardenDark
  -- colorscheme Base2Tone_DesertDark
  -- colorscheme Base2Tone_LakeDark
  -- colorscheme Base2Tone_MeadowDark
  -- colorscheme Base2Tone_DrawbridgeDark
  -- colorscheme Base2Tone_MallDark
  -- colorscheme Base2Tone_SuburbDark
  -- colorscheme Base2Tone_LavenderDark
  -- colorscheme Base2Tone_PoolDark
  -- colorscheme Base2Tone_PorchDark
  -- colorscheme Base2Tone_HeathDark
  -- colorscheme Base2Tone_CaveDark
  -- colorscheme Base2Tone_MotelDark
--   --
  --
  -- Add plugins
  plugins = {
   { "mhartington/oceanic-next" },
   -- { "andweeb/presence.nvim" },
    -- {
      -- "ray-x/lsp_signature.nvim",
      -- event = "BufRead",
      -- config = function()
        -- require("lsp_signature").setup()
      -- end,
    -- },
  },

  -- On/off virtual diagnostics text
  virtual_text = true,

  -- Disable default plugins
  enabled = {
    nvim_tree = true,
    lualine = true,
    lspsaga = true,
    gitsigns = true,
    colorizer = true,
    toggle_term = true,
    comment = true,
    symbols_outline = true,
    indent_blankline = true,
    dashboard = true,
    which_key = true,
    neoscroll = true,
    ts_rainbow = true,
    ts_autotag = true,
  },
}

-- Set options
set.relativenumber = true



-- Set key bindings
map("n", "<C-s>", ":w!<CR>", opts)

-- Set autocommands
vim.cmd [[
  augroup packer_conf
    autocmd!
    autocmd bufwritepost plugins.lua source <afile> | PackerSync
  augroup end
]]

return config
