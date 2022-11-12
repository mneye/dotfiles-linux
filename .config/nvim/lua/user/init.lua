--              AstroNvim Configuration Table
-- All configuration changes should go inside of the table below

-- You can think of a Lua "table" as a dictionary like data structure the
-- normal format is "key = value". These also handle array like data structures
-- where a value with no key simply has an implicit numeric key

local toggle_term_cmd = astronvim.toggle_term_cmd

local config = {
  -- Configure AstroNvim updates
  updater = {
    remote = "origin", -- remote to use
    channel = "stable", -- "stable" or "nightly"
    version = "latest", -- "latest", tag name, or regex search like "v16.*" to only do updates before v2 (STABLE ONLY)
    -- branch = "main", -- branch name (NIGHTLY ONLY)
    -- commit = nil, -- commit hash (NIGHTLY ONLY)
    pin_plugins = nil, -- nil, true, false (nil will pin plugins on stable only)
    skip_prompts = false, -- skip prompts about breaking changes
    show_changelog = true, -- show the changelog after performing an update
    auto_reload = false, -- automatically reload and sync packer after a successful update
    auto_quit = false, -- automatically quit the current session after a successful update
    -- remotes = { -- easily add new remotes to track
    --   ["remote_name"] = "https://remote_url.come/repo.git", -- full remote url
    --   ["remote17"] = "github_user/repo", -- GitHub user/repo shortcut,
    --   ["remote18"] = "github_user", -- GitHub user assume AstroNvim fork
    -- },
  },
  --
  -- Set colorscheme to use
  colorscheme = "nord",

  highlights = {
    -- init = { -- this table overrides highlights in all themes
    --   Normal = { bg = "#000015" },
    -- }
    -- duskfox = { -- a table of overrides/changes to the duskfox theme
    --   Normal = { bg = "#000015" },
    -- },
  },

  -- set vim options here (vim.<first_key>.<second_key> =  value)
  options = {
    opt = {
      -- set to true or false etc.
      relativenumber = true, -- sets vim.opt.relativenumber
      number = true, -- sets vim.opt.number
      spell = false, -- sets vim.opt.spell
      signcolumn = "auto", -- sets vim.opt.signcolumn to auto
      wrap = true, -- sets vim.opt.wrap
      linebreak = true -- sets vim.opt.linebreak
    },
    g = {
      mapleader = " ", -- sets vim.g.mapleader
      cmp_enabled = true, -- enable completion at start
      autopairs_enabled = true, -- enable autopairs at start
      diagnostics_enabled = true, -- enable diagnostics at start
      status_diagnostics_enabled = true, -- enable diagnostics in statusline
    },
  },
  -- If you need more control, you can use the function()...end notation
  -- options = function(local_vim)
  --   local_vim.opt.relativenumber = true
  --   local_vim.g.mapleader = " "
  --   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
  --   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
  --
  --   return local_vim
  -- end,

  -- Set dashboard header
  header = {
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣾⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⠋⢹⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⣼⡿⠁⠀⠈⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡿⠁⠙⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⢠⣾⣦⡀⠀⠀⢰⣿⠃⠀⠀⠀⢹⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⡟⠁⠀⠀⢹⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⢀⣿⠃⠻⣧⠀⠀⣿⡏⠀⠀⠀⢀⣠⣽⣿⣶⠶⠿⠿⠿⠿⠿⠿⠿⢶⣶⣤⣄⣀⢀⣴⡿⠋⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⣼⡏⠀⠀⢹⣧⣸⣿⠁⢀⣤⣾⡿⠟⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠻⢿⣯⣀⠀⠀⠀⠀⠀⠀⣿⣷⠀⠀⠀⠀⠀⠀⣀⣤⣾",
    "⣿⡇⠀⠀⠀⢻⣿⣿⣴⡿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣷⣄⠀⠀⠀⠀⣿⡟⠀⢀⣠⣴⣾⠿⠛⢹⣿",
    "⣿⡇⠀⠀⠀⠀⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣷⣄⠀⢰⣿⣧⣶⡿⠛⠉⠀⠀⠀⣾⡏",
    "⢹⣇⢰⠀⠀⢠⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣧⣾⣿⡟⠉⠀⠀⠀⠀⠀⣼⡿⠀",
    "⠘⣿⡈⡆⠀⣾⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⡟⠀⠀⠀⠀⠀⠀⣴⡿⠁⠀",
    "⠀⢹⣧⠸⣤⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⡇⣰⠊⠁⠀⢀⣼⡿⠁⠀⠀",
    "⠀⠀⢿⣇⣹⣿⣷⣶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⣤⡄⠀⠀⢹⣿⠃⠀⠀⣠⣿⠟⠀⠀⠀⠀",
    "⠀⠀⠈⣿⣿⠃⢿⡇⠉⠛⠷⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⣤⣴⡶⠶⠟⠛⠋⣻⡿⠀⠀⠀⢸⣿⢀⣠⣾⡿⠁⠀⠀⠀⠀⠀",
    "⠀⠀⣴⡿⠁⠀⠘⣿⡄⠀⠀⠀⠉⠛⣷⣼⠀⢰⣤⣴⡶⠾⠟⠛⠋⠉⠁⠀⠀⠀⠀⠀⣰⣿⢃⠀⠀⠀⢸⣿⡿⠟⠁⠀⠀⠀⠀⠀⠀⠀",
    "⠀⢰⣿⠁⠀⠀⠀⠈⢿⣦⣄⣀⣀⣼⠇⠀⠀⠀⠀⠻⣧⣀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣾⣿⠕⠃⠀⠀⠀⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠈⣿⡆⠀⠀⠀⠀⠀⠈⠙⠛⠋⠉⠀⠀⠀⠀⠀⠀⠈⠛⠿⣶⣶⣶⣶⣶⡾⠿⠛⠋⠁⠀⠀⠀⠀⣼⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠘⢿⣦⡀⠀⠀⠀⢀⣤⣦⠀⠀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠙⢿⣦⣄⠀⠈⠀⢹⣤⠞⠉⠹⣄⣤⠞⠻⣄⣠⠿⡄⢀⡴⠋⠳⣄⠀⠀⠀⠀⢀⣴⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠈⠛⠿⣶⣤⣀⠀⠀⠀⠀⠋⠀⠀⠀⠙⠋⠀⠙⠁⠀⠀⠀⠈⠂⣀⣤⣾⠿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠉⠛⠿⣶⣦⣤⣀⣀⠀⠀⠀⠀⢀⣀⣀⣠⣤⣴⣶⡿⠟⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⣠⣴⡿⠛⠷⣶⣤⣄⣉⣽⣿⠛⠛⠿⠿⠟⠛⠛⣻⡿⠋⠉⢿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⣿⣥⡶⣶⣤⠤⠈⠉⠉⠉⠀⢀⣀⠲⡄⠀⢀⣼⠟⠁⠀⢀⣿⣷⡀⣀⣤⣤⣤⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠘⠟⢠⡿⣡⣦⣤⣤⣤⣤⣼⣟⡛⠻⠿⠿⠟⠋⠀⠀⣠⣾⠋⠹⣿⠟⣉⣡⣄⡉⠻⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⡟⠁⠀⠉⠉⠙⡿⢋⡿⠂⣀⣀⣤⣤⣤⣾⠟⠁⠀⢰⣿⠟⠋⠁⠉⢻⡆⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣷⡿⠛⠋⠉⠉⠁⢄⠀⠀⠀⠘⣿⠀⠀⠀⠀⠈⣿⢸⣿⡀⠀⠀⣀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⡁⠠⣤⣤⣤⣀⣘⣧⡀⠀⠀⠛⢷⣦⡀⠀⣠⣿⡇⠻⠷⠶⢿⣿⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⠿⠷⠀⠀⠈⣿⡏⠉⠉⢻⣆⣀⣤⠄⠻⣷⡀⠻⣿⣄⡀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣟⣁⠀⠀⠀⣠⡾⠛⠁⠀⠀⠀⠙⣿⡇⠀⠀⠹⣷⡄⠈⠙⠿⣦⣄⣸⡇⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠛⠛⠿⠿⠟⠀⠀⠀⠀⠀⠀⠀⢸⣷⣶⣶⠾⠿⠟⠀⠀⠀⠈⠻⡿⠁⠀⠀⠀⠀⠀⠀⠀",
  },

  -- Default theme configuration
  default_theme = {
    -- Modify the color palette for the default theme
    colors = {
      --      fg = "#aaaaaa",
      --      bg = "#1e222a",
      -- bg = "NONE",
      -- transparency = true,
    },
    highlights = function(hl) -- or a function that returns a new table of colors to set
      local C = require "default_theme.colors"

      hl.Normal = { fg = C.fg, bg = C.bg }

      -- New approach instead of diagnostic_style
      hl.DiagnosticError.italic = true
      hl.DiagnosticHint.italic = true
      hl.DiagnosticInfo.italic = true
      hl.DiagnosticWarn.italic = true

      return hl
    end,
    -- enable or disable highlighting for extra plugins
    plugins = {
      aerial = true,
      beacon = false,
      bufferline = true,
      dashboard = true,
      highlighturl = true,
      hop = false,
      indent_blankline = true,
      lightspeed = false,
      ["neo-tree"] = true,
      notify = true,
      ["nvim-tree"] = false,
      ["nvim-web-devicons"] = true,
      rainbow = true,
      symbols_outline = false,
      telescope = true,
      vimwiki = false,
      ["which-key"] = true,
    },
  },

  -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
  diagnostics = {
    virtual_text = true,
    underline = true,
  },

  -- Extend LSP configuration
  lsp = {
    -- enable servers that you already have installed without mason
    servers = {
      -- "pyright"
    },
    formatting = {
      format_on_save = false, -- enable or disable auto formatting on save
      disabled = { -- disable formatting capabilities for the listed clients
        -- "pylsp"
        -- "sumneko_lua",
      },
      -- filter = function(client) -- fully override the default formatting function
      --   return true
      -- end
    },
    -- easily add or disable built in mappings added during LSP attaching
    mappings = {
      n = {
        -- ["<leader>lf"] = false -- disable formatting keymap
      },
    },
    -- add to the global LSP on_attach function
    -- on_attach = function(client, bufnr)
    -- end,

    -- override the mason server-registration function
    -- server_registration = function(server, opts)
    --   require("lspconfig")[server].setup(opts)
    -- end,

    -- Add overrides for LSP server settings, the keys are the name of the server
    ["server-settings"] = {
      -- example for addings schemas to yamlls
      -- yamlls = { -- override table for require("lspconfig").yamlls.setup({...})
      --   settings = {
      --     yaml = {
      --       schemas = {
      --         ["http://json.schemastore.org/github-workflow"] = ".github/workflows/*.{yml,yaml}",
      --         ["http://json.schemastore.org/github-action"] = ".github/action.{yml,yaml}",
      --         ["http://json.schemastore.org/ansible-stable13.9"] = "roles/tasks/*.{yml,yaml}",
      --       },
      --     },
      --   },
      -- },
    },
  },

  -- Mapping data with "desc" stored directly by vim.keymap.set().
  --
  -- Please use this mappings table to set keyboard mapping since this is the
  -- lower level configuration and more robust one. (which-key will
  -- automatically pick-up stored data by this setting.)
  mappings = {
    -- first key is the mode
    n = {
      -- second key is the lefthand side of the map
      -- mappings seen under group name "Buffer"
      ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
      ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
      ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
      ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
      -- quick save
      ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command
      -- buffers
      ["<tab>"] = { "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer tab" },
      ["<S-tab>"] = { "<cmd>BufferLineCyclePrev<cr>", desc = "Previous buffer tab" },
      ["<leader>zz"] = { ":let &scrolloff=10014-&scrolloff<CR>", desc = "Toggle centered writing (scrolloff)" },
      ["<leader>zr"] = { ":setlocal relativenumber!<CR>", desc = "Toggle relative number" },
      ["<leader>zw"] = { ":setlocal wrap!<CR>", desc = "Toggle local wrap (current buffer/window)" },
      ["<leader>zf"] = { ":let &scrolloff=10015-&scrolloff<CR>:Goyo<CR>:Limelight!!<CR>",
        desc = "Toggle FOCUS mode" },
      ["<C-A>"] = { "ggVG" },
      ["<leader>gc"] = { ":cd ~/.config/<CR><cmd>Neotree focus<CR>", desc = "cd .conf dir" },
      ["<leader>gh"] = { ":cd ~<CR><cmd>Neotree focus<CR>", desc = "cd Home dir" },
      ["<leader>gj"] = { ":cd ~/Library/Mobile Documents/com~apple~CloudDocs/Uni<CR><cmd>Neotree focus<CR>",
        desc = "cd Uni dir" },
      ["<leader>gk"] = { ":cd ~/code/<CR><cmd>Neotree focus<CR>", desc = "cd code dir" },
      ["<leader>gl"] = { ":cd ~/Latex/<CR><cmd>Neotree focus<CR>", desc = "cd Latex dir" },

      -- git remap
      ["<leader>Gj"] = { function() require("gitsigns").next_hunk() end, desc = "Next git hunk" },
      ["<leader>Gk"] = { function() require("gitsigns").prev_hunk() end, desc = "Previous git hunk" },
      ["<leader>Gl"] = { function() require("gitsigns").blame_line() end, desc = "View git blame" },
      ["<leader>Gp"] = { function() require("gitsigns").preview_hunk() end, desc = "Preview git hunk" },
      ["<leader>Gh"] = { function() require("gitsigns").reset_hunk() end, desc = "Reset git hunk" },
      ["<leader>Gr"] = { function() require("gitsigns").reset_buffer() end, desc = "Reset git buffer" },
      ["<leader>Gs"] = { function() require("gitsigns").stage_hunk() end, desc = "Stage git hunk" },
      ["<leader>Gu"] = { function() require("gitsigns").undo_stage_hunk() end, desc = "Unstage git hunk" },
      ["<leader>Gd"] = { function() require("gitsigns").diffthis() end, desc = "View git diff" },
      ["<leader>Gt"] = { function() require("telescope.builtin").git_status() end, desc = "Git status" },
      ["<leader>Gb"] = { function() require("telescope.builtin").git_branches() end, desc = "Git branches" },
      ["<leader>Gc"] = { function() require("telescope.builtin").git_commits() end, desc = "Git commits" },
      ["<leader>Gg"] = { function() toggle_term_cmd "lazygit" end, desc = "ToggleTerm lazygit" }
    },
    i = {
      ["<C-h>"] = { "<Left>" },
      ["<C-j>"] = { "<Down>" },
      ["<C-k>"] = { "<Up>" },
      ["<C-l>"] = { "<Right>" },
    },
    t = {
      -- ["<C-tab>"] = { "toggle terminal" }
      -- ["<Esc>"] = { "<Nop>" }
      -- setting a mapping to false will disable it
      -- ["<esc>"] = false,
    },
  },

  -- Configure plugins
  plugins = {
    require('user.plugins'),
    init = {
      -- { 'lervag/vimtex', require('user.vimtex') },
      -- { "lervag/vimtex",
      --   config = function()
      --     require("user.vimtex")
      --   end,
      -- },
      --         require("user.vimtex").setup()
      --     end,
      -- },
      -- --[[ vim.cmd("user vimtex.vim") ]]
      -- config = function()
      --         require("vimtex")
      -- end,

      -- { "pwmt/zathura" },
      -- Theme
      -- {
      --   "catppuccin/nvim",
      --   as = "catppuccin",
      --   config = function()
      --     vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
      --     require("catppuccin").setup()
      --     vim.api.nvim_command "colorscheme catppuccin"
      --   end
      -- }
      -- { "nvim-neo-tree/neo-tree.nvim",
      --     filesystem = {
      --         filtered_items = {
      --             visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
      --             hide_dotfiles = false,
      --              hide_gitignored = true,
      --         }
      --     }
      -- },
      -- ["nvim-neo-tree/neo-tree.nvim"] = {
      --     config = function()
      --         require("neo-tree").setup({
      --             filesystem = {
      --                 filtered_items = {
      --                     visible = true,
      --                     hide_dotfiles = false,
      --                     hide_gitignored = true,
      --                     hide_hidden = false, -- only works on Windows for hidden files/directories
      --                     hide_by_name = {
      --                         ".DS_Store",
      --                         "thumbs.db",
      --                         --"node_modules",
      --                     }
      --                 }
      --             }
      --         }
      --         )
      --     end,
      -- },
      -- You can disable default plugins as follows:
      -- ["goolord/alpha-nvim"] = { disable = true },

      -- You can also add new plugins here as well:
      -- Add plugins, the packer syntax without the "use"
      -- { "andweeb/presence.nvim" },
      -- {
      --   "ray-x/lsp_signature.nvim",
      --   event = "BufRead",
      --   config = function()
      --     require("lsp_signature").setup()
      --   end,
      -- },

      -- We also support a key value style plugin definition similar to NvChad:
      -- ["ray-x/lsp_signature.nvim"] = {
      --   event = "BufRead",
      --   config = function()
      --     require("lsp_signature").setup()
      --   end,
      -- },
    },
    -- All other entries override the require("<key>").setup({...}) call for default plugins
    ["null-ls"] = function(config) -- overrides `require("null-ls").setup(config)`
      -- config variable is the default configuration table for the setup function call
      -- local null_ls = require "null-ls"

      -- Check supported formatters and linters
      -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
      -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
      config.sources = {
        -- Set a formatter
        -- null_ls.builtins.formatting.stylua,
        -- null_ls.builtins.formatting.prettier,
      }
      return config -- return final config table
    end,
    treesitter = { -- overrides `require("treesitter").setup(...)`
      -- ensure_installed = { "lua" },
    },
    -- use mason-lspconfig to configure LSP installations
    ["mason-lspconfig"] = { -- overrides `require("mason-lspconfig").setup(...)`
      -- ensure_installed = { "sumneko_lua" },
    },
    -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
    ["mason-null-ls"] = { -- overrides `require("mason-null-ls").setup(...)`
      -- ensure_installed = { "prettier", "stylua" },
    },
  },

  -- LuaSnip Options
  luasnip = {
    -- Add paths for including more VS Code style snippets in luasnip
    "Users/martin/Library/Application Support/Code/User/snippets/python.json",
    -- Extend filetypes
    filetype_extend = {
      -- javascript = { "javascriptreact" },
    },
  },

  -- CMP Source Priorities
  -- modify here the priorities of default cmp sources
  -- higher value == higher priority
  -- The value can also be set to a boolean for disabling default sources:
  -- false == disabled
  -- true == 1015
  cmp = {
    source_priority = {
      nvim_lsp = 1015,
      luasnip = 765,
      buffer = 515,
      path = 265,
    },
  },

  -- Modify which-key registration (Use this with mappings table in the above.)
  ["which-key"] = {
    -- Add bindings which show up as group name
    register = {
      -- first key is the mode, n == normal mode
      n = {
        -- second key is the prefix, <leader> prefixes
        ["<leader>"] = {
          -- third key is the key to bring up next level and its displayed
          -- group name in which-key top level menu
          ["b"] = { name = "Buffer" },
        },
      },
    },
  },

  -- This function is run last and is a good place to configuring
  -- augroups/autocommands and custom filetypes also this just pure lua so
  -- anything that doesn't fit in the normal config locations above can go here
  polish = function()
    vim.api.nvim_set_keymap('n', '<F1>', ':w<CR>:term python3 %<CR>', { noremap = true })

    -- Set up custom filetypes
    -- vim.filetype.add {
    --   extension = {
    --     foo = "fooscript",
    --   },
    --   filename = {
    --     ["Foofile"] = "fooscript",
    --   },
    --   pattern = {
    --     ["~/%.config/foo/.*"] = "fooscript",
    --   },
    -- }
  end,


}
vim.cmd([[
set notimeout
set clipboard+=unnamedplus
]])
return config
