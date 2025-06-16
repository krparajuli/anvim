return {
  {
    "github/copilot.vim",
    event = "VeryLazy",
    version = "*",
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {
      mappings = {
        -- See Mappings section for more information
        toggle = "<leader>ct", -- Toggle Copilot Chat
        send = "<leader>cs", -- Send message to Copilot Chat
        close = "<leader>cc", -- Close Copilot Chat
      },

      -- See Configuration section for options
    },
    -- See Commands section for default commands if you want to lazy load on them
  },
}