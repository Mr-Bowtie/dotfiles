local pickers = require "telescope.pickers"
local finders = require "telescope.finders"
local conf = require("telescope.config").values
local command = vim.api.nvim_command
local actions = require "telescope.actions"
local action_state = require "telescope.actions.state"

function _G.telescope_find_dir(opts)
    pickers.new(opts, {
        prompt_title = "Find Directory",
        finder = finders.new_oneshot_job({"fd", "-t", "d"}),
        sorter = conf.generic_sorter(opts),
        attach_mappings = function(prompt_bufnr, map)
            actions.select_default:replace(function()
                local selection = action_state.get_selected_entry()
                if selection ~= nil then
                    actions.close(prompt_bufnr)
                    command("cd " .. selection[1])
                end
            end)
            return true
        end
    }):find()
end

