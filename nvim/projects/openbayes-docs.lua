require'clipboard-image'.setup {
  -- You can create configuration for ceartain filetype by creating another field (markdown, in this case)
  -- If you're uncertain what to name your field to, you can run `:set filetype?`
  -- Missing options from `markdown` field will be replaced by options from `default` field
  markdown = {
    img_dir = "static/img/docs",
    img_dir_txt = "/img/docs",
    affix = "![](%s)"
  }
}
