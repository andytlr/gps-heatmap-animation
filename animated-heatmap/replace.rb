class String
  def replace_content
    # to_replace = scan("replace_me")
    # gsub("replace_me", "wang")

    # gsub("replace_me") {|num| num.to_i+1}

    # count = (count || '0').to_i + 1
    # gsub("replace_me", "#{count}")

    # to_replace.length.times do |n|
    #   "Derp"
    # end

    # to_replace.each do |i|
    #   #some stuff
    # end
  end
end

# Will scan for [replace]
# begin="[replace]"
# begin="[replace]"

filename = "process.txt"

File.open(filename, 'r') do |f|
  i = 0
  contents = f.read.gsub('begin="[replace]"') { |m|
    m.sub('[replace]', (i += 0.25).to_s)
  }
  puts contents
end

# filename = "process.txt"
# outdata = File.read(filename).replace_content

# File.open(filename, 'w') do |out|
#   out << outdata
# end