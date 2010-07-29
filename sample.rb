require 'rubygems'
require 'prawn'
pdf  = Prawn::Document.new() do
  font 'times.ttf'
  text "Hello"
end
pdf.render_file 'sample/sample 2.pdf'
