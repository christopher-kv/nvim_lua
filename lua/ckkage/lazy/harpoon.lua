-- return {
-- 	"ThePrimeagen/harpoon",
-- 	branch = "harpoon2",
-- 	dependencies = {"nvim-lua/plenary.nvim"},
--     init = function()
--         local harpoon = require("harpoon")
--         harpoonr:setup()
--     end,
--     keys = {
--         { "<leader>a", {function() harpoon:list():append() end, mode="n"} },
--         { '<C-e>', {function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, mode="n"} },
--         { "<leader>j", {function() harpoon:list():select(1) end, mode="n"} },
--         { "<leader>k", {function() harpoon:list():select(2) end, mode="n"} },
--         { "<leader>l", {function() harpoon:list():select(3) end, mode="n"} },
--         { "<leader>i", {function() harpoon:list():select(4) end, mode="n"} },
--     },
-- }

return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  opts = {
    menu = {
      width = vim.api.nvim_win_get_width(0) - 4,
    },
    settings = {
      save_on_toggle = true,
    },
  },
  keys = function()
    local keys = {
      {
        "<leader>a",
        function()
          require("harpoon"):list():add()
        end,
        desc = "Harpoon File",
      },
      {
        "<leader>h",
        function()
          local harpoon = require("harpoon")
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = "Harpoon Quick Menu",
      },
    }

    for i = 1, 5 do
      table.insert(keys, {
        "<leader>" .. i,
        function()
          require("harpoon"):list():select(i)
        end,
        desc = "Harpoon to File " .. i,
      })
    end
    return keys
  end,
}
