local M = {}

M.defaults = {
  variant = "dark",        -- "dark" | "flared"
  transparent = false,     -- use terminal background
  terminal_colors = true,  -- set g:terminal_color_*
  bold_keywords = true,    -- bold on keywords/storage (matches original)
  italic_comments = false, -- off in the original VSCode theme
}

M.options = vim.deepcopy(M.defaults)

function M.setup(opts)
  M.options = vim.tbl_deep_extend("force", M.defaults, opts or {})
end

return M
