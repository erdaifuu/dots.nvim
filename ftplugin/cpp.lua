local wk = require("which-key")

-- buffer = 0 keeps these scoped to the cpp buffer this ftplugin ran for.
wk.add({
  { "<leader>r", group = "run", buffer = 0 },
  {
    "<leader>rr",
    ":w | :TermExec cmd='cr \"%\"' size=50 direction=tab go_back=0<CR>",
    desc = "Run",
    buffer = 0,
  },
  {
    "<leader>rd",
    ":w | :TermExec cmd='cr \"%\" -d' size=50 direction=tab go_back=0<CR>",
    desc = "Debug",
    buffer = 0,
  },
})
