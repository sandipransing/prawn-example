require 'rubygems'
require 'prawn'
require 'prawn/core'
require 'prawn/layout'
pdf  = Prawn::Document.new(:page_size => 'A4', :layout => 'portrait') do
  #stroke horizontal_rule
  stroke do
    rectangle [0,700], 525, 1
  end

  font 'times.ttf'
  text "A Ruby On Rails Developer based in India", :size => 32
  text "Email: san2821@gmail.com", :size => 21


end
pdf.render_file 'sample/stroke.pdf'
