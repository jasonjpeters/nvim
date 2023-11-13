return {
    "szw/vim-maximizer",
    key = {
        { "<leader>mm", "<cmd>MaximizerToggle<cr>", desc = "Maximize/minimize splits." },
    },
    config = function()
        require("vim-maximizer").setup({})
    end,
}
