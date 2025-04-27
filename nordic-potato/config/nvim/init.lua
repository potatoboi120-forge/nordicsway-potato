-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.g.python3_host_prog = vim.fn.exepath("python3")
-- Open the CURRENT file in browser (correctly)
vim.keymap.set("n", "<leader>o", function()
  local file = vim.fn.expand("%:t") -- Gets just the filename (e.g., "index.html")
  local dir = vim.fn.expand("%:p:h") -- Gets the file's directory

  -- Run live-server in the file's folder and open ONLY that file
  vim.cmd("silent !live-server " .. dir .. " --port=8080 --open=" .. file .. " --no-browser &")
  vim.notify("Live server: http://localhost:8080/" .. file, vim.log.levels.INFO)
end, { desc = "Open current file in browser" })

-- Stop server
vim.keymap.set("n", "<leader>q", ":!pkill -f live-server<CR>", { desc = "Stop live server" })
