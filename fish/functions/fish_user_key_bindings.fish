function fish_user_key_bindings
  # prevent iterm2 from closing when typing Ctrl-D (EOF)
  bind \cd delete-char
  bind \cg 'fzf_cd_ghq'
end
