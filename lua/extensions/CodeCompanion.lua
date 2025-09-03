require("codecompanion").setup({
	adapters = {
		http = {
			qwen = function()
				return require("codecompanion.adapters").extend("ollama", {
					schema = {
						model = {
							default = "qwen2.5-coder"
						},
					},
				})
			end,
		},
	},
	strategies = {
		chat = {
			adapter = "qwen",
		},
		inline = {
			adapter = "qwen",
		},
	},
})
