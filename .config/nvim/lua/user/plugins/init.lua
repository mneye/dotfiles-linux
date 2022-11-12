return {
  { "lervag/vimtex",
    config = function()
      require("user.vimtex")
    end,
  },

  { "pwmt/zathura"
  },

  { "shaunsingh/nord.nvim",
    config = function()
      require("user.nord")
    end,
  },

  { "junegunn/limelight.vim",
    config = function()
      require("user.limelight")
    end,
  },

  { "junegunn/goyo.vim",
    config = function()
      require("user.goyo")
    end,
  },

  { "michaelb/sniprun"
  },

}
