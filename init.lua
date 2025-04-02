--
if vim.loader then
  vim.loader.enable()
end

_G.dd = function(...)
  require("util.debug").dump(...)
end
vim.print = _G.dd
-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("lspconfig").yamlls.setup({
  settings = {
    yaml = {
      schemas = {
        ["https://raw.githubusercontent.com/aws/serverless-application-model/refs/heads/main/schema_source/sam.schema.json"] = "template.yaml",
      },
      keyOrdering = false,
      customTags = {
        "!Sub", "!Ref", "!GetAtt", "!Join", "!If", "!Equals", "!FindInMap", "!ImportValue",
        "!Select", "!Split", "!And", "!Or", "!Not", "!Base64", "!Cidr"
      },
    },
  },
})
