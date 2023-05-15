return {
  "goolord/alpha-nvim",
  opts = function()
    require("alpha")
    require("alpha.term")
    local dashboard = require("alpha.themes.dashboard")
    local terminal = {
      type = "terminal",
      command = "lolcat ~/.config/nvim/neovim.cat",
      width = 80,
      height = 12,
      opts = {
        redraw = true,
      },
    }

    dashboard.config.layout = {
      terminal,
      { type = "padding", val = 14 },
      dashboard.section.buttons,
      { type = "padding", val = 1 },
    }
  end,
}
