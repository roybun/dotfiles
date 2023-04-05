local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

-- Recommended by nvim-tree devs
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- lua
nvimtree.setup({
	actions = {
		open_file = {
			window_picker = {
				enable = false,
			},
		},
	},
	sync_root_with_cwd = true,
	respect_buf_cwd = true,
	update_focused_file = {
		enable = true,
		update_root = true,
	},
})
