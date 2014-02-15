# Will scan for [replace]
# begin="[replace]"
# begin="[replace]"

filename = "heatmap.svg"

class String
  def replace_content
    i = 0
    gsub('begin="[replace]"') { |m|
      m.sub('[replace]', (i += 0.25).to_s)
    }
  end
end

outdata = File.read(filename).replace_content

File.open(filename, 'w') do |out|
  out << outdata
end