return {
    "RRethy/vim-illuminate",
    lazy = false,
    config = function()
        require("illuminate").configure({
            providers = {
                "lsp",
                "treesitter",
                "regex",
            },
            case_insensitive_regex = false,
        })
    end,
}
