local is_available = astronvim.is_available

local maps = { i = {}, n = {}, v = {}, t = {}, [""] = {} }
-- Navigate buffers
if is_available "bufferline.nvim" then
  maps.n["<tab>"] = { "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer tab" }
  maps.n["<S-tab>"] = { "<cmd>BufferLineCyclePrev<cr>", desc = "Previous buffer tab" }
  maps.n[">b"] = { "<cmd>BufferLineMoveNext<cr>", desc = "Move buffer tab right" }
  maps.n["<b"] = { "<cmd>BufferLineMovePrev<cr>", desc = "Move buffer tab left" }
else
  maps.n["<tab>"] = { "<cmd>bnext<cr>", desc = "Next buffer" }
  maps.n["<S-tab>"] = { "<cmd>bprevious<cr>", desc = "Previous buffer" }
end
