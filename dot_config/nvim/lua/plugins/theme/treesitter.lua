return {
  {
    "arborist-ts/arborist.nvim",
    opts = {
      prefer_wasm = true,
      update_cadence = "weekly",
      -- optionally ensure some languages are always available
      ensure_installed = {
        "c",
        "cpp",
        "rust",
        "zig",
        "cmake",
        "make",
        "llvm",
        "lua",
        "regex",
        "diff",
      },
    },
  },
}
