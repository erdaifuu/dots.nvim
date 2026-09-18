return {
  "nvimdev/guard.nvim",
  dependencies = {
    "nvimdev/guard-collection",
  },
  event = "BufReadPre",
  config = function()
    -- defaults
    vim.g.guard_config = {
        -- format on write to buffer
        fmt_on_save = true,
        -- use lsp if no formatter was defined for this filetype
        lsp_as_default_formatter = false,
    }
   local ft = require("guard.filetype")

   ft("c,cpp,json"):fmt("clang-format")
  end,
}
