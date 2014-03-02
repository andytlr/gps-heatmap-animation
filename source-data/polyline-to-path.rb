filename = "Rplots.svg"

class String
  def replace_content
    # gsub('<polyline', '<path').gsub('points="', 'd="M')
    # The variation below will also strip out all the other shit not needed by the D3 animation.
    gsub('<polyline', '<path').gsub('points="', 'd="M').gsub('opacity="0.125" fill="none" stroke="#000000" stroke-width="0.75" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"', 'fill="none"')
  end
end

outdata = File.read(filename).replace_content

File.open(filename, 'w') do |out|
  out << outdata
end