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
  text "ROR developer based in India", :size => 32
  text "Email: san2821@gmail.com", :size => 21
  
  move_down(20)
  text "Image", :size => 21
  move_down(20)
  image 'sandip.png', :position => :center 
  
  move_down(20)
  text "Scale Image", :size => 21
  move_down(20)
  image 'sandip.png', :height => 50, :position => :center, :border => 2 

  move_down(20)
  text "Open Remote Image (from my facebook account)", :size => 21
  move_down(20)
  require "open-uri"
  image open("http://t2.gstatic.com/images?q=tbn:kTG6gAKrnou2gM:http://www.facebook.com/profile/pic.php?uid=AAAAAQAQrLXvTWfyY2ANjttV8D1c0QAAAAnDHPFJe0pPFR84iIzXPKro&t=1")

end
pdf.render_file 'sample/image.pdf'
