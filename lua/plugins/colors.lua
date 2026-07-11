return {
    {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
	    require("catppuccin").setup({
		flavour = "mocha",
		transparent_background = true,
		show_end_of_buffer = true
	    })

	    vim.cmd.colorscheme("catppuccin-mocha")
	end,
    },
--    {
--	"nvim-lualine/lualine.nvim",
--	dependencies = {
--	    "nvim-tree/nvim-web-devicons",
--	},	
--	opts = {
--	    theme = "tokyonight",
--		},

--  },

}
