require 'rubygems'
require 'prawn'
require 'prawn/core'
require 'prawn/layout'
pdf  = Prawn::Document.new(:page_size => 'A4', :layout => 'portrait') do
  move_down(10)
  text "Sandip Ransing (FunOnRails)", :size => 15,  :align => :right
  #stroke horizontal_rule
  stroke do
    rectangle [0,745], 525, 1
  end
  move_down(1)
  image 'sandip.png', :scale => 0.5, :position => :left 
  move_down(5)
  text "ROR developer based in India", :size => 12
  text "Email: san2821@gmail.com", :size => 12

  move_down(21)
  text "Links using prawn", :style => :bold
  move_down(5)

  # height, width, width, height
  link_annotation([200, 200, 500, 40],:Border => [0,0,1], :A => { :Type => :Action, :S => :URI, :URI => Prawn::LiteralString.new("http://twitter.com/sandipransing") } )

  link_annotation(([0, 100, 100, 150]), :Border => [0,0,1], :Dest => "http://funonrails.com")

end  
pdf.render_file 'sample/link.pdf'
