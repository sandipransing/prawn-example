require 'rubygems'
require 'prawn'
require 'prawn/core'
require 'prawn/layout'
pdf  = Prawn::Document.new(:page_size => 'A4', :layout => 'portrait') do
=begin
  header [0,770] do
    text "Sandip Ransing", :size => 41,  :align => :center
  end
=end
  #stroke horizontal_rule
  stroke do
    circle_at [100,100], :radius => 25
    rectangle [300,300], 100, 200
  end

  font 'times.ttf'
  text "A Ruby On Rails Developer based in India", :size => 32
  text "Email: san2821@gmail.com", :size => 21


end
pdf.render_file 'sample/stroke.pdf'
