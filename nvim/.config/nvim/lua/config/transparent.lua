return {
	"xiyaowong/transparent.nvim",
	opts = {
		extra_groups = {
			"NormalFloat", -- Neovim floating windows
			"NvimTreeNormal", -- NvimTree
			"WhichKeyFloat", -- WhichKey floating windows
			"TelescopeNormal", -- Telescope
		},
	},
	config = function(_, opts)
		require("transparent").setup(opts)
		-- Enable transparency
		require("transparent").clear_prefix("BufferLine")
		require("transparent").clear_prefix("Lazy")
	end,
}
