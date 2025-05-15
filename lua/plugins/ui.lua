return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
        ██╗    ██╗███████╗██╗ ██████╗██╗  ██╗███████╗███╗   ██╗ ██████╗ 
        ██║    ██║██╔════╝██║██╔════╝██║  ██║██╔════╝████╗  ██║██╔════╝ 
        ██║ █╗ ██║█████╗  ██║██║     ███████║█████╗  ██╔██╗ ██║██║  ███╗
        ██║███╗██║██╔══╝  ██║██║     ██╔══██║██╔══╝  ██║╚██╗██║██║   ██║
        ╚███╔███╔╝███████╗██║╚██████╗██║  ██║███████╗██║ ╚████║╚██████╔╝
        ╚══╝╚══╝ ╚══════╝╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═══╝ ╚═════╝ 
      ]]
      logo = string.rep("\n", 4) .. logo .. "\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = true, -- Show filtered items as "dimmed" instead of hiding
          hide_gitignored = false, -- Show files in .gitignore
          hide_dotfiles = false, -- Show dotfiles
        },
      },
    },
  },
}
