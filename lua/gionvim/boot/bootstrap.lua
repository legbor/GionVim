local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

_G.gionvim_docs = true
_G.GionVim = require("gionvim.util")

require("lazy").setup({
    spec = {
        ---- Basic plugin ----
        { import = "gionvim.plugins" },

        ---- Extras plugin ----
        -- colorscheme
        -- { import = "gionvim.plugins.extras.colorscheme.nightfox" },
        -- dap
        { import = "gionvim.plugins.extras.dap.luadap" }, -- Neovim lua debug
        -- develop
        { import = "gionvim.plugins.extras.develop.comments" }, -- Quick comment
        { import = "gionvim.plugins.extras.develop.compiler" }, -- Code build and run
        { import = "gionvim.plugins.extras.develop.font-icon" }, -- Select icon
        { import = "gionvim.plugins.extras.develop.commander" }, -- Find plugin keymaps
        -- diagnostics
        { import = "gionvim.plugins.extras.diagnostics.trouble" }, -- Look diagnostics result
        -- editor
        { import = "gionvim.plugins.extras.editor.autotools" }, -- Auto pairs and save
        { import = "gionvim.plugins.extras.editor.replacer" }, -- Factor replace
        { import = "gionvim.plugins.extras.editor.portal" }, -- Local list navigate
        { import = "gionvim.plugins.extras.editor.surround" }, -- Surround modify
        { import = "gionvim.plugins.extras.develop.refactor" }, -- Refactor code
        -- elevate
        { import = "gionvim.plugins.extras.elevate.scope" }, -- Enhance Buffer scope
        { import = "gionvim.plugins.extras.elevate.escape" }, -- More user-friendly mode switching
        { import = "gionvim.plugins.extras.elevate.scroll" }, -- Smooth scrolling
        { import = "gionvim.plugins.extras.elevate.substitute" }, -- Replace neovim built-in 'substitute'
        -- explorer
        { import = "gionvim.plugins.extras.explorer" }, -- More explorer
        -- git
        { import = "gionvim.plugins.extras.git.neogit" }, -- Neovim's magit
        { import = "gionvim.plugins.extras.git.diffview" }, -- Git history difference
        { import = "gionvim.plugins.extras.git.git-prompt" }, -- Add status line git prompt
        -- labeler
        { import = "gionvim.plugins.extras.labeler.harpoon" }, -- File mark
        { import = "gionvim.plugins.extras.labeler.marks" }, -- Line mark
        -- lsp
        -- -- lang
        { import = "gionvim.plugins.extras.lsp.langlarge.clangd" }, -- C/C++
        -- { import = "gionvim.plugins.extras.lsp.langlarge.java" }, -- Java
        { import = "gionvim.plugins.extras.lsp.langlarge.jqx" }, -- Json/Yaml
        { import = "gionvim.plugins.extras.lsp.langlarge.markdown" }, -- markdown
        { import = "gionvim.plugins.extras.lsp.langlarge.typescript" }, -- Javascript/Typescript
        -- -- util
        { import = "gionvim.plugins.extras.lsp.boost.dropbar" }, -- Code navigate
        { import = "gionvim.plugins.extras.lsp.boost.fidget" }, -- Progress prompt
        { import = "gionvim.plugins.extras.lsp.boost.garbage" }, -- disable unfocused serve
        { import = "gionvim.plugins.extras.lsp.boost.illuminate" }, -- Display the same vocabulary under the cursor
        { import = "gionvim.plugins.extras.lsp.boost.increname" }, -- Timely feedback rename
        { import = "gionvim.plugins.extras.lsp.boost.lspsaga" }, -- Strengthen LSP experience
        { import = "gionvim.plugins.extras.lsp.boost.naybuddy" }, -- Float navigate
        { import = "gionvim.plugins.extras.lsp.boost.neoconf" },
        { import = "gionvim.plugins.extras.lsp.boost.outline" }, -- Symbols Outline
        -- seek
        { import = "gionvim.plugins.extras.seek.fzf" },
        -- treesitter
        { import = "gionvim.plugins.extras.treesitter.treesj" }, -- Splitting or merging code
        { import = "gionvim.plugins.extras.treesitter.context" },
        { import = "gionvim.plugins.extras.treesitter.textobjects" },
        { import = "gionvim.plugins.extras.treesitter.autotag" }, -- Auto close tag
        -- ui
        { import = "gionvim.plugins.extras.ui.dashboard" }, -- Interface
        { import = "gionvim.plugins.extras.ui.colorizer" }, -- Display hexadecimal colors and auto devicons color
        { import = "gionvim.plugins.extras.ui.edgy" }, -- Predefined layout
        { import = "gionvim.plugins.extras.ui.hlslens" }, -- Highlight entries during search
        { import = "gionvim.plugins.extras.ui.rainbow" }, -- Rainbow brackets
        { import = "gionvim.plugins.extras.ui.indentstyle" }, -- Indent format
        -- { import = "gionvim.plugins.extras.ui.hot" }, -- Hot reload language
        -- utils
        { import = "gionvim.plugins.extras.utils.startuptime" }, -- Measure startup time
        { import = "gionvim.plugins.extras.utils.dot" }, -- Add more filetypes
        { import = "gionvim.plugins.extras.utils.rest" }, -- Http client
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
