require("codecompanion").setup({
	adapters = {
		ollama = function()
			return require("codecompanion.adapters").extend("ollama", {
				schema = {
					model = {
						default = "qwen2.5-coder"
					},
				},
			})
		end,
	},
	strategies = {
		chat = {
			adapter = "ollama",
		},
		inline = {
			adapter = "ollama",
		},
	},
})
