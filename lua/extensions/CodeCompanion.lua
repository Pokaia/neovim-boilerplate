require("codecompanion").setup({
  adapters = {
    http = {
      ollama_chat = function()
        return require("codecompanion.adapters").extend("ollama", {
          name = "ollama_chat",
          schema = {
            model = { default = "qwen2.5:14b" },
            num_ctx = { default = 16384 },
          },
        })
      end,
      ollama_inline = function()
        return require("codecompanion.adapters").extend("ollama", {
          name = "ollama_inline",
          schema = {
            model = { default = "qwen2.5-coder:7b" },
            num_ctx = { default = 8192 },
          },
        })
      end,
      ollama_agent = function()
        return require("codecompanion.adapters").extend("ollama", {
          name = "ollama_agent",
          schema = {
            model = { default = "qwen2.5-coder:14b" },
            num_ctx = { default = 16384 },
          },
        })
      end,
    },
  },
  strategies = {
    chat   = { adapter = "ollama_chat" },
    inline = { adapter = "ollama_inline" },
  },
})
