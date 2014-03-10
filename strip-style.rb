filename = "chart.svg"

class String
  def replace_content
    gsub(/ style="(.*?)"/, '') # Remove all style attributes so the SVG is completely unstyled.
    .gsub(/<rect(.*?)\/>/, '') # Remove background rectangle.
  end
end

outdata = File.read(filename).replace_content

File.open(filename, 'w') do |out|
  out << outdata
end