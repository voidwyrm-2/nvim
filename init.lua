require("voidwyrm-2.lazy")
require("voidwyrm-2.core")

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.cmd("cd %:p:h")
  end,
})
