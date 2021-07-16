require 'pry-byebug'

def cipher(txt, key)
 
  broken = txt.bytes #returns ascii code broken in to array
  
  binding.pry
end

cipher('test',2)
