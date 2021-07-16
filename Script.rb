require 'pry-byebug'

def cipher(txt, key)
 
  broken = txt.bytes #returns ascii code broken in to array
  
  addKey = broken.map do |ascii|
    new_letter = (ascii + key).chr
  end

  combine_key = addKey.join
  

  binding.pry
end

cipher('test',2)
