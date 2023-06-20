-- n, v, i, t = mode names

local M = {}

M.general = {
    i = {
        ["ii"] = { "<ESC>", "exit insert mode" },
    },

    n = {
        ["M"] = { "`", "go to mark" },
        ["U"] = { ":redo<CR>", "redo" },
        ["<leader>oc"] = { ":cd ~/.config/<CR>:Ranger<CR>", "open config directory" },
        ["<leader>fm"] = { ":Ranger<CR>", "ranger" },

        ["<leader>ww"] = { ":VimwikiUISelect<CR>:set nonu wrap<CR>" }
    },
}

M.comment = {
    plugin = true,

    -- toggle comment in both modes
    n = {
        ["<leader>cl"] = {
        function()
            require("Comment.api").toggle.linewise.current()
        end,
        "toggle comment",
        },
    },

    v = {
        ["<leader>cv"] = {
            "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
            "toggle comment",
        },
    },
}

M.nvimtree = {
    plugin = true,

    n = {
        -- toggle
        ["<leader>ft"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },

        -- focus
        ["<leader>fft"] = { "<cmd> NvimTreeFocus <CR>", "focus nvimtree" },
    },
}

return M
