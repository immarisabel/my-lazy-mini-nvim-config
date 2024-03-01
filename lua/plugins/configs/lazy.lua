return {
  -- current color scheme
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
      return {
        require("rose-pine").setup({
          variant = "auto",
          dark_variant = "main",

          disable_background = true,
          disable_nc_background = true,
          disable_float_background = true,
 enable = {
        terminal = true,
        legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
        migrations = true, -- Handle deprecated options automatically
    },

    styles = {
        bold = true,
        italic = true,
        transparency = false,
    },
          groups = {
           background = "#ff69b4", --"#133340", --"#255159",
            -- panel = "surface",   -- "#133340",
			text = "#ff69b4",
            border = "pine", --"pine",
          },

          highlight_groups = {
            -- blend colours against the 'base' background
            ColorColumn = { bg = "pine", blend = 40 },
            CursorLine = { bg = "pine", blend = 21 },
			text = { fg = "#ff69b4"},
            Search = { bg = "rose", inherit = false },
            FloatBorder = { bg = "none" },
            LineNr = { fg = "#f6c177" }, -- gold

            -- nvim-cmp
            -- winhighlight = "Normal:CmpPmenu,CursorLine:CmpSel,Search:None"
            CmpPmenu = { bg = "#011b26" },
            CmpSel = { bg = "pine" },
            CmpDoc = { bg = "#011b26" },
          },
        }),
      }
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
}
