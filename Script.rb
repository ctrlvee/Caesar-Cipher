require 'pry-byebug'



def cipher(txt, key)
  upLetters = *('A'..'Z')
  broken = txt.bytes
  addKey = broken.map do |ascii|
  if upLetters.include?(ascii.chr)
    if (ascii + key) > 90
      difference = (ascii + key) - 90
      new_letter = (64 + difference).chr
      
    end
  else
    new_letter = (ascii + key).chr
   
  end

  end
  combine_key = addKey.join
  binding.pry
end

cipher('ZZZest',15)
