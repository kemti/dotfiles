return {
  "jmbuhr/otter.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {},
  config = function(_, opts)
    local otter = require("otter")
    otter.setup(opts)

    -- automatically activate whenever you enter an HTML buffer
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "html", "templ", "htmldjango" }, -- also works for htmldjango / templ if you like
      callback = function() -- nil == “all injected langs”
        otter.activate({ "javascript", "typescript", "css" })
      end,
    })
  end,
}
