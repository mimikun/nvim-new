---@type table
local builds = {
  make = "make",
  cmake = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
}

---@type LazySpec
local spec = {
  "nvim-telescope/telescope-fzf-native.nvim",
  build = builds.make,
  --lazy = false,
  --cond = false,
  --enabled = false,
}

return spec
