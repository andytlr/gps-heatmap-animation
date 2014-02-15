replace_content="100"
filename = "process.txt"
outdata = File.read(filename).gsub("replace_me", "#{replace_content}")

File.open(filename, 'w') do |out|
  out << outdata
end