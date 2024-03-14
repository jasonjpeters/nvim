return {
    'numToStr/Comment.nvim',
    lazy = false,
    config = function()
        require('Comment').setup {
            opleader = {
                line = ' ',
                block = ' ',
            },
        }
    end,
}
