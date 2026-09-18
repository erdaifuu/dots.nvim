-- jdtls is not a plain lspconfig server: it needs to be started per project.
-- mason-lspconfig is told to skip jdtls in lua/plugins/mason.lua, so this file is the
-- only thing that attaches the server -- otherwise java buffers get two clients.

local ok, jdtls = pcall(require, "jdtls")
if not ok then
  return
end

local root = vim.fs.root(0, { "gradlew", "mvnw", "pom.xml", "build.gradle", ".git" })
if not root then
  return
end

-- One workspace per project; a shared workspace corrupts jdtls' index.
local workspace = vim.fn.stdpath("cache") .. "/jdtls/" .. vim.fn.fnamemodify(root, ":p:h:t")

-- blink.cmp does not register its capabilities globally, so pass them in by hand.
local capabilities = vim.lsp.protocol.make_client_capabilities()
local blink_ok, blink = pcall(require, "blink.cmp")
if blink_ok then
  capabilities = blink.get_lsp_capabilities(nil, true)
end

jdtls.start_or_attach({
  cmd = { vim.fn.stdpath("data") .. "/mason/bin/jdtls", "-data", workspace },
  root_dir = root,
  capabilities = capabilities,
  settings = {
    java = {
      signatureHelp = { enabled = true },
      contentProvider = { preferred = "fernflower" },
    },
  },
})
