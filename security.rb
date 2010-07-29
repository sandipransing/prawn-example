require 'rubygems'
require 'prawn'
require 'prawn/security'
Prawn::Document.generate("sample/secure.pdf") do
  text "crypted Prawn password is 921921"
  encrypt_document :user_password => 'hello', :owner_password => 'railer',
    :permissions => { :print_document => false }
end
