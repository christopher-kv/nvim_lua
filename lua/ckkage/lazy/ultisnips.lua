return {
    'SirVer/ultisnips',
    dependencies={'honza/vim-snippets'},
    keys = {
        {
            '<C-e>x',
            vim.g.UltiSnipsExpandTrigger,
            desc="expland html to markdown selected content"
        },
        {
            '<C-e>j',
            vim.g.UltiSnipsJumpForwardTrigger,
            desc="Jump to next placeholder"
        },
        {
            '<C-e>k',
            vim.g.UltiSnipsJumpBackwardtrigger,
            desc="Jump to previous placeholder"
        },

    }
}
