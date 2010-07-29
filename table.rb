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
  text "Table using prawn", :style => :bold
  move_down(5)
  data = [
    ["Name", {:text => 'Sandip Ransing', :font_style => :bold, :colspan => 4 }],
    ["Address", {:text => 'SHIVAJINAGAR, PUNE 411005', :colspan => 4 }],
    ["Landmark",{:text => 'NEAR FC COLLEGE', :colspan => 4 }],
    ["Mobile","9860648108", {:text => "", :colspan => 3 }],
    ["Education", {:text => "Bachelor in Computer Engineering", :colspan => 4 }],
      ["Vehicle", 'Hero Honda',"Reg. No.", {:text => "MH 12 EN 921", :colspan => 3 }],
      ["Additional", "GDCA", "class", 'First', ""],
      [{:text => "Areas of Speciality", :font_style => :bold}, {:text => "Ruby, Rails, Radiant, Asterisk, Adhearsion, Geokit, Prawn, ....,...", :font_style => :bold, :colspan => 4}],
      [{:text => "Website", :colspan => 2},{:text => "www.funonrails.com", :colspan => 3}],
      [{:text => "Company", :colspan => 2},{:text => "Josh Software", :colspan => 3}]
  ]
  table data, 
    :border_style => :grid, #:underline_header
    :font_size  => 10, 
    :horizontal_padding => 6,
    :vertical_padding   => 3,
    :border_width => 0.7, 
    :column_widths => { 0 => 130, 1 => 100, 2 => 100, 3 => 100, 4 => 80 }, 
    :position => :left,
    :align => { 0 => :left, 1 => :right, 2 => :left, 3 => :right, 4 => :right }

end  
pdf.render_file 'sample/table.pdf'
