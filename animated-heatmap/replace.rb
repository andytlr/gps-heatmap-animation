class String
  def replace_content
    to_replace = scan("replace_me")
    # gsub("replace_me", "wang")

    # to_replace.length.times do |n|
    #   "Derp"
    # end
  end
end

filename = "process.txt"
outdata = File.read(filename).replace_content

File.open(filename, 'w') do |out|
  out << outdata
end