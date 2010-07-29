require 'rubygems'
require 'prawn'
require 'prawn/core'
require 'prawn/layout'
pdf  = Prawn::Document.new(:page_size => 'A4', :layout => 'portrait') do
  text "Sandip Ransing", :size => 21,  :align => :center
  #stroke horizontal_rule
  stroke do
    rectangle [0,740], 525, 1
  end
  move_down(20)
  font 'times.ttf'
  text "A Ruby On Rails Developer based in India", :size => 32
  text "Email: san2821@gmail.com", :size => 21


end
pdf.render_file 'sample/header.pdf'
