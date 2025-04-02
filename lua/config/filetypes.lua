vim.filetype.add({
  pattern = {
    [".*%.yaml"] = function(path, bufnr)
      local content = table.concat(vim.api.nvim_buf_get_lines(bufnr, 0, -1, false), "\n")
      if content:match("AWSTemplateFormatVersion") then
        return "yaml.cloudformation"
      end
    end,
  },
})
