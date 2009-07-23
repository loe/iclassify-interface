mongrel_size = 120
head_room = 512

total_memory = attrib?("memorysize")
if total_memory
  if total_memory =~ /MB$/
    total_memory.gsub!(/ MB/, '')
    total_memory = total_memory.to_f
  else
    total_memory.gsub!(/ GB/, '')
    total_memory = total_memory.to_f * 1024
  end
  available_memory = total_memory - head_room
  total_mongrels = available_memory / mongrel_size
  add_attrib("mongrel_servers", total_mongrels.to_i) unless attrib?("mongrel_servers")
  add_attrib("mongrel_port_number", 5000) unless attrib?("mongrel_port_number")
end