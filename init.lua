require "options"
require "mappings"
require "commands"

-- bootstrap plugins & lazy.nvim
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim" -- path where its going to be installed

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  }
end

vim.opt.rtp:prepend(lazypath)

require "plugins"

vim.cmd "colorscheme rose-pine"

vim.api.nvim_create_user_command('OpenTree', function(opts)
    vim.cmd('cd ' .. opts.args)
    require('nvim-tree').setup {} -- Ensure nvim-tree is set up
    vim.cmd('NvimTreeOpen')
end, { nargs = 1 })

