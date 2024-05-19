return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = {"nvim-lua/plenary.nvim"},
    config = function()
        require("harpoon").setup()
    end,
    keys = {
        { "<leader>a", {function() harpoon:list():append() end, mode="n"} },
        { '<C-e>', {function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, mode="n"} },
        { "<leader>j", {function() harpoon:list():select(1) end, mode="n"} },
        { "<leader>k", {function() harpoon:list():select(2) end, mode="n"} },
        { "<leader>l", {function() harpoon:list():select(3) end, mode="n"} },
        { "<leader>i", {function() harpoon:list():select(4) end, mode="n"} },
	},
}
