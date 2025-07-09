return {
    "williamboman/mason.nvim",
    dependencies = { "williamboman/mason-lspconfig.nvim" },
    config = function()
        -- import mason plugin safely
        local mason = require("mason")

        -- enable mason
        mason.setup()

        -- see:
        -- https://vi.stackexchange.com/questions/46856/neovim-duplicate-lsp-clients-attached-to-the-buffer
        --[[
        local function getTSServer()
            --print(vim.fn.has("macunix"), vim.loop.os_uname().sysname == "Darwin")
            if jit.os == "OSX" then
                return "ts_ls"
            end
            return "tsserver"
        end

       require("mason-lspconfig").setup {
            -- list of servers for mason to install
            ensure_installed = {
                "cssls",
                "emmet_ls",
                "gopls",
                "graphql",
                "html",
                "lua_ls",
                "rust_analyzer",
                "tailwindcss",
                "ruff",
                "pyright",
                "nim_langserver",
                getTSServer(),
            },
            -- auto-install configured servers (with lspconfig)
            automatic_installation = true, -- not the same as ensure_installed
        }
        ]]
    end,
}
