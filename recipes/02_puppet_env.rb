unless attrib?("puppet_env")
  replace_attrib("puppet_env", "development")
end