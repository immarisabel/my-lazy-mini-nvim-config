require("zen-mode").setup {
  window = {
    backdrop = 0.5,
    width = 50,
    height = 1.5,
    options = {signcolumn = "no", number = false, cursorline = false}
  },
  plugins = {
    options = {enabled = true, ruler = false, showcmd = false},
    twilight = {enabled = true},
    gitsigns = {enabled = false},
    tmux = {enabled = false}
  }

}