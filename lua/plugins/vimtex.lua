return {
  "lervag/vimtex",
  lazy = false,     -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_compiler_progname = "nvr"
    vim.g.vimtex_view_method = "zathura"
    vim.g.tex_conceal = "abdmgs"

    -- wo if jus lsatex
    vim.o.conceallevel = 2
    vim.o.concealcursor = "c"

    vim.api.nvim_set_hl(0, "Conceal", { link = "Normal" })
    vim.api.nvim_create_autocmd("ColorScheme", {
      callback = function()
        vim.api.nvim_set_hl(0, "Conceal", { fg = "#ff9900", bg = "NONE", nocombine = true })
      end,
    })
      end
}
