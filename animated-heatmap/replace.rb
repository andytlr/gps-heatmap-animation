def replace_content
  "replaced"
end

filename = "process.txt"
outdata = File.read(filename).gsub("replace_me", "#{replace_content}")

File.open(filename, 'w') do |out|
  out << outdata
end