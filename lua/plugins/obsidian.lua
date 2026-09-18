return {
  "epwalsh/obsidian.nvim",
  version = "*",  -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        name = "self",
        path = "~/Documents/Carl II/0 - Self/",
      },
      {
        name = "school",
        path = "~/Documents/Carl II/1. Rough Drafts/Sp26/",
      },
      {
        name = "code",
        path = "~/Documents/Carl II/1. Rough Drafts/Coding/",
      },
      {
        name = "tea",
        path = "~/Documents/Carl II/1. Rough Drafts/Tea/",
      },
      {
        name = "projects",
        path = "~/Documents/Carl II/2. Projects/",
      },
      {
        name = "notes",
        path = "~/Documents/Carl II/",
      }
    },

    -- see below for full list of options 👇
      daily_notes = {
        -- Optional, if you keep daily notes in a separate directory.
        folder = "Diary"
      }
    }
}
