require 'net/http'

def get_from_ec2(key = '')
  base_url = "http://instance-data.ec2.internal/latest/meta-data/" + key
  url = URI.parse(base_url)
  req = Net::HTTP::Get.new(url.path)
  res = Net::HTTP.start(url.host, url.port) do |http|
    http.request(req)
  end
  
  res.body
end

def get_keys(key = '')
  keys = get_from_ec2(key).split("\n")
  
  keys.inject([]) do |accum, k|
    if k =~ /\/$/
      get_keys(key + k).each do |k|
        accum << k
      end
      
      accum
    elsif k =~ /=/
      get_keys(key + $` + '/').each do |k|
        accum << k
      end
      
      accum
    else
      accum << key + k
      
      accum
    end
  end
end

if attrib?('domain') =~ /(\.amazonaws.com|compute-1.internal|ec2.internal)$/
  replace_attrib("ec2", "true")

  get_keys.each do |key|
    replace_attrib("ec2_#{key.gsub(/-|\//, '_')}", get_from_ec2("#{key}"))
  end
end