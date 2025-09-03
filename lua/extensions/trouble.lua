--[[
  File: trouble.lua
  Description: Configuration of trouble.nvim
  See: https://github.com/folke/trouble.nvim
]]

local trouble = require("trouble")
trouble.setup(
	{
		warn_no_results = false,
		open_no_results = true,
	}
)
