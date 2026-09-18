return {
  'L3MON4D3/LuaSnip',
  build = "make install_jsregexp",
  dependencies = {
    "erdaifuu/luasnip-latex-snippets.nvim",
  },
  init = function()
    require'luasnip-latex-snippets'.setup()
    -- or setup({ use_treesitter = true })
    require("luasnip").config.setup { enable_autosnippets = true }

    require("luasnip.loaders.from_lua").lazy_load({
      paths = { vim.fn.stdpath("config") .. "/lua/snippets" },
    })
  end,
}
