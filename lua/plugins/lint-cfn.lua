return {
  "mfussenegger/nvim-lint",
  opts = {
    linters_by_ft = {
      yaml = { "cfn_lint" },
      json = { "cfn_lint" },
    },
    linters = {
      cfn_lint = {
        cmd = "cfn-lint",
        args = { "$FILENAME" },
        stdin = false,
        stream = "stdout",
        ignore_exitcode = true,
        parser = require("lint.parser").from_pattern(
          "^(%d+):(%d+):(%a+): (.+)$",
          { "lnum", "col", "severity", "message" },
          {
            severities = {
              ["E"] = vim.diagnostic.severity.ERROR,
              ["W"] = vim.diagnostic.severity.WARN,
              ["I"] = vim.diagnostic.severity.INFO,
            },
          }
        ),
      },
    },
  },
}
