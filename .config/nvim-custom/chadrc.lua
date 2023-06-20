local M = {}

M.options = {
    nvChad = {
        update_url = "https://github.com/NvChad/NvChad",
        update_branch = "main",
    },
}

M.ui = {
    -- hl = highlights
    hl_add = {},
    hl_override = {},
    changed_themes = {},
    theme_toggle = {},
    theme = "chocolate", -- default theme
    transparency = true,
}

-- Plugins table - the congfig function is run on packer sync
M.plugins = {
    ["francoiscabrol/ranger.vim"] = {
        config = function()
            require "custom.configs.ranger"
        end,
    },
    ["vimwiki/vimwiki"] = {
        config = function()
            require "custom.configs.vimwiki"
        end,
    },
    ["dylanaraps/wal.vim"] = {},
    ["goolord/alpha-nvim"] = {
        after = "base46",
        disable = false,
        config = function()
            require "custom.configs.alpha"
        end,
    },
}

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
