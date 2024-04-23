local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

_G.GionVim = require("config.util")

require("lazy").setup({
    spec = {
        ---- Basic plugin ----
        { import = "plugins" },

        ---- Extras plugin ----
        -- colorscheme
        -- { import = "plugins.extras.colorscheme.nightfox" },
        -- dap
        { import = "plugins.extras.dap.luadap" }, -- neovim lua debug
        -- develop
        { import = "plugins.extras.develop.bigfile" }, -- big file control
        { import = "plugins.extras.develop.comments" }, -- quick comment
        { import = "plugins.extras.develop.compiler" }, -- Code build and run
        { import = "plugins.extras.develop.font-icon" }, -- Select icon
        { import = "plugins.extras.develop.commander" }, -- Find plugin keymaps
        -- diagnostics
        { import = "plugins.extras.diagnostics.trouble" }, -- Look diagnostics result
        -- editor
        { import = "plugins.extras.editor.autotools" }, -- Auto pairs save and go last place
        { import = "plugins.extras.editor.replacer" }, -- Factor replace
        { import = "plugins.extras.editor.portal" }, -- Local list navigate
        { import = "plugins.extras.editor.surround" }, -- Surround modify
        -- { import = "plugins.extras.develop.refactor" }, -- Refactor code
        -- elevate
        { import = "plugins.extras.elevate.scope" }, -- Enhance Buffer scope
        { import = "plugins.extras.elevate.escape" }, -- More user-friendly mode switching
        { import = "plugins.extras.elevate.scroll" }, -- Smooth scrolling
        { import = "plugins.extras.elevate.substitute" }, -- Replace neovim built-in 'substitute'
        -- explorer
        { import = "plugins.extras.explorer" }, -- More explorer
        -- git
        { import = "plugins.extras.git.neogit" }, -- Neovim's magit
        { import = "plugins.extras.git.diffview" }, -- Git history difference
        { import = "plugins.extras.git.git-prompt" }, -- Add status line git prompt
        -- labeler
        { import = "plugins.extras.labeler.harpoon" }, -- File mark
        { import = "plugins.extras.labeler.marks" }, -- Line mark
        -- lsp
        -- -- lang
        { import = "plugins.extras.lsp.langlarge.clangd" }, -- C/C++
        -- { import = "plugins.extras.lsp.langlarge.java" }, -- Java
        { import = "plugins.extras.lsp.langlarge.jqx" }, -- json/yaml
        { import = "plugins.extras.lsp.langlarge.typescript" }, -- javascript/typescript
        -- -- util
        { import = "plugins.extras.lsp.boost.aerial" }, -- Code outline
        -- { import = "plugins.extras.lsp.boost.dropbar" }, -- Code navigate
        { import = "plugins.extras.lsp.boost.fidget" }, -- Progress prompt
        { import = "plugins.extras.lsp.boost.garbage" }, -- disable unfocused serve
        { import = "plugins.extras.lsp.boost.illuminate" }, -- Display the same vocabulary under the cursor
        { import = "plugins.extras.lsp.boost.increname" }, -- Timely feedback rename
        { import = "plugins.extras.lsp.boost.lspsaga" }, -- Strengthen LSP experience
        { import = "plugins.extras.lsp.boost.naybuddy" }, -- Float navigate
        { import = "plugins.extras.lsp.boost.outline" }, -- Symbols Outline
        -- seek
        { import = "plugins.extras.seek.fzf" },
        -- treesitter
        { import = "plugins.extras.treesitter.treesj" }, -- Splitting or merging code
        { import = "plugins.extras.treesitter.context" },
        { import = "plugins.extras.treesitter.autotag" }, -- Auto close tag
        { import = "plugins.extras.treesitter.commentstring" },
        -- ui
        { import = "plugins.extras.ui.dashboard" }, -- Interface
        { import = "plugins.extras.ui.colorizer" }, -- Display hexadecimal colors
        { import = "plugins.extras.ui.edgy" }, -- Predefined layout
        { import = "plugins.extras.ui.hlslens" }, -- Highlight entries during search
        { import = "plugins.extras.ui.rainbow" }, -- Rainbow brackets
        { import = "plugins.extras.ui.indentstyle" }, -- indent format
        -- utils
        { import = "plugins.extras.utils.startuptime" }, -- Measure startup time
        { import = "plugins.extras.utils.dot" }, -- add filetypes
    },
    defaults = { version = false },
    install = { colorscheme = { "tokyonight", "nightfox", "habamax" } },
    ui = {
        border = "rounded",
        icons = {
            ft = "",
            loaded = "",
            not_loaded = "",
        },
    },
    custom_keys = {
        ["<localleader>l"] = false,
        ["<localleader>t"] = false,
    },
    performance = {
        rtp = {
            disabled_plugins = {
                "2html_plugin",
                "bugreport",
                "compiler",
                "editorconfig",
                "ftplugin",
                "getscript",
                "getscriptPlugin",
                "gzip",
                "logiPat",
                "matchit",
                "matchparen",
                "netrw",
                "netrwFileHandlers",
                "netrwPlugin",
                "netrwSettings",
                "optwin",
                "remote_plugins",
                "rplugin",
                "rrhelper",
                "shada",
                "shada_plugin",
                "spellfile",
                "spellfile_plugin",
                "synmenu",
                "syntax",
                "tar",
                "tarPlugin",
                "tohtml",
                "tutor",
                "tutor_mode_plugin",
                "vimball",
                "vimballPlugin",
                "zip",
                "zipPlugin",
            },
        },
    },
})
