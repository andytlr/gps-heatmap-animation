# Will scan for [replace] in the file and replace it with an incremented number.
# Eg this:
# begin="[replace]"
# begin="[replace]"
# Would become:
# begin="1"
# begin="2"
# If incrementing by 1

filename = "heatmap.svg"

class String
  def replace_content
    i = 0
    increment_by = 0.05

    gsub('begin="[replace]"') { |m|
      m.sub('[replace]', (i += increment_by).to_s)
    }
  end
end

outdata = File.read(filename).replace_content

File.open(filename, 'w') do |out|
  out << outdata
end