return {
    -- 显示十六进制颜色
    {
        "NvChad/nvim-colorizer.lua",
        lazy = true,
        keys = {
            { "<leader>hc", "<cmd>ColorizerToggle<CR>", desc = "Toggle Display Hexadecimal Color" },
        },
        opts = {
            filetypes = {
                "*",
                cmp_docs = { always_update = true },
            },
            user_default_options = {
                RRGGBBAA = true,
                AARRGGBB = true,
                tailwind = true,
            },
        },
    },
}
