local status, lualine = pcall(require, "lualine")
if not status then
  vim.notify("没有找到 lualine")
  return
end

lualine.setup({
  options = {
    -- 指定皮肤
    -- https://github.com/nvim-lualine/lualine.nvim/blob/master/THEMES.md
    theme = "onedark",
    -- 分割线
    component_separators = {
      left = "|",
      right = "|",
    },
    -- https://github.com/ryanoasis/powerline-extra-symbols
    section_separators = {
      left = " ",
      right = "",
    },
    globalstatus = true,
  },
  extensions = { "nvim-tree", "toggleterm" },
  sections = {
    lualine_c = {
      {
        "filename",
        -- 0: just the filename
        -- !: relative path
        -- 2: absolute path
        -- 3: absolute path, with tilde as the home directory
        path = 1,
      },
    },
    lualine_x = {
      "filesize",
      {
        "fileformat",
        symbols = {
          unix = '', -- e712
          dos = '', -- e70f
          mac = '', -- e711
        },
        --symbols = {
        --  unix = "LF",
        --  dos = "CRLF",
        --  mac = "CR",
        --},
      },
      "encoding",
      "filetype",
    },
  },
	tabline = {
		lualine_a = {'buffers'},
	},
})
