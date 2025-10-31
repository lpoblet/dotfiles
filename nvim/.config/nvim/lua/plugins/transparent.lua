return {
  "xiyaowong/transparent.nvim",
  lazy = false,
  priority = 1000, -- Load early
  config = function()
    require("transparent").setup({
      enable = true,
      extra_groups = {
        "NormalFloat",
        "NvimTreeNormal",
        "TelescopeNormal",
        "TelescopeBorder",
        "WhichKeyFloat",
        "Pmenu",
        "LazyNormal",
        "MasonNormal",
        "NoiceCmdline",
        "NoicePopup",
        "NoiceSplit",
        "BufferLineBackground",
        "BufferLineBufferVisible",
        "NeoTreeNormal",
        "NeoTreeNormalNC",
        "NeoTreeEndOfBuffer",
        -- LazyVim specific
        "LazyButton",
        "LazyH1",
        "LazyH2",
        "LazyNormal",
        "LazyProgressDone",
        "LazyProgressTodo",
        "LazyReason",
        "LazySpecial",
        "LazyTask",
        "LazyUrl",
        "LazyValue",
      },
      exclude_groups = {}, -- Don't exclude any groups
    })

    -- Force enable
    vim.g.transparent_enabled = true
  end,
}
