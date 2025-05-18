return {
  {
    "Saghen/blink.cmp",
    opts = {
      keymap = {
        -- Remove the default Ctrl+Space mapping if present
        ["<C-Space>"] = nil,
        -- Map Ctrl+j to trigger completion
        ["<C-j>"] = { "show" },
        -- You can keep or customize other keymaps as needed
      },
    },
  },
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
