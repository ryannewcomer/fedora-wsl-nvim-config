return {
    "williamboman/mason.nvim",
    cmd = "Mason",
    keys = { { "<leader>cm", ":Mason<cr>", desc = "Mason" } },
    build = ":MasonUpdate",
    opts = {
        ensure_installed = {
            "html-lsp",
            "jq",
            "json-lsp",
            "lua-language-server",
            "markdownlint-cli2",
            "prettier",
            "shfmt",
            "stylua",
            "tailwindcss-language-server",
            "taplo",
            "templ",
        },
        registries = {
            "github:mason-org/mason-registry",
        },
    },
    config = function(_, opts)
        require("mason").setup(opts)
        local mr = require("mason-registry")
        local function ensure_installed()
            for _, tool in ipairs(opts.ensure_installed) do
                local p = mr.get_package(tool)
                if not p:is_installed() then
                    p:install()
                end
            end
        end
        if mr.refresh then
            mr.refresh(ensure_installed)
        else
            ensure_installed()
        end
    end,
}
