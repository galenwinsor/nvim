local M = {}

M.load_mappings = function(section_name)
    local section_mappings = require("keymaps")[section_name]

    for mode, mappings in pairs(section_mappings) do
        for _, mapping in pairs(mappings) do
            if #mapping == 3 then
                vim.keymap.set(mode, mapping[1], mapping[2], { noremap = true, silent = true, desc = mapping[3] })
            else
                vim.keymap.set(mode, mapping[1], mapping[2], { noremap = true, silent = true })
            end
        end
    end
end

return M
