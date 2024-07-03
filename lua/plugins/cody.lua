return {
  {
    --   "sourcegraph/sg.nvim",
    --   dependencies = { "nvim-lua/plenary.nvim" },
    --   -- If you have a recent version of lazy.nvim, you don't need to add this!
    --   build = "nvim -l build/init.lua",
    --   lazy = false,
    --   opts = {
    --     enable_cody = false,
    --     accept_tos = true,
    --     download_binaries = true,
    --   },
    --   config = function(opts)
    --     require("sg").setup(opts)
    --   end,
  },
}
