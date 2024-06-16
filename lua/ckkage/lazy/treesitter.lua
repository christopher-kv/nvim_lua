return {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    event = { "LazyFile", "VeryLazy" },
    lazy = vim.fn.argc(-1) == 0, -- load treesitter early when opening a file from the cmdline
    init = function(plugin)
        -- PERF: add nvim-treesitter queries to the rtp and it's custom query predicates early
        -- This is needed because a bunch of plugins no longer `require("nvim-treesitter")`, which
        -- no longer trigger the **nvim-treesitter** module to be loaded in time.
        -- Luckily, the only things that those plugins need are the custom queries, which we make available
        -- during startup.
        require("lazy.core.loader").add_to_rtp(plugin)
        require("nvim-treesitter.query_predicates")
    end,
    config = function ()
        local configs = require('nvim-treesitter.configs')
        configs.setup({
            ensure_installed = {},
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
                indent = {enable=true},
            },
        })
    end
}
