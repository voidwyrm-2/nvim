return {
    "williamboman/mason.nvim",
    dependencies = { "williamboman/mason-lspconfig.nvim" },
    config = function()
        -- import mason plugin safely
        local mason = require("mason")

        -- import mason-lspconfig plugin safely
        local mason_lspconfig = require("mason-lspconfig")

        -- enable mason
        mason.setup()

        local function getTSServer()
            --print(vim.fn.has("macunix"), vim.loop.os_uname().sysname == "Darwin")
            if jit.os == "OSX" then
                return "ts_ls"
            end
            return "tsserver"
        end

        mason_lspconfig.setup({
            -- list of servers for mason to install
            ensure_installed = {
                "cssls",
                "elixirls",
                "emmet_ls",
                "gopls",
                "graphql",
                "html",
                "lua_ls",
                "rust_analyzer",
                "tailwindcss",
                getTSServer(),
            },
            -- auto-install configured servers (with lspconfig)
            automatic_installation = true, -- not the same as ensure_installed
        })
    end,
}
