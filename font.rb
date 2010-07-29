require 'rubygems'
require 'prawn'
pdf  = Prawn::Document.new do
  font 'times.ttf'
  text "Sandip Ransing", :size => 41,  :align => :center
  text "A Ruby On Rails Developer based in India", :size => 32
  text "Email: san2821@gmail.com", :size => 21
end
pdf.render_file 'sample/font.pdf'
