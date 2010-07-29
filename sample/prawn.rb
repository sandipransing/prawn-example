require 'rubygems'
require 'prawn'
pdf  = Prawn::Document.new do
  text "Prawn Rocks"
end
pdf.render_file 'sample/prawn.pdf'
