unless attrib?('puppet_env')
  replace_attrib('puppet_env', ENV['PUPPET_ENV'] || 'production')
end