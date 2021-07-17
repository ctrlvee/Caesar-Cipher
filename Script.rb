require 'pry-byebug'


def cipher(txt, key)
  upLetters = *('A'..'Z')
  downLetters = *('a'..'z')
  broken = txt.bytes
  addKey = broken.map do |ascii|
  #binding.pry
  if upLetters.include?(ascii.chr)
    if (ascii + key) > 90
      difference = (ascii + key) - 90
      new_letter = (64 + difference).chr
    else
      new_letter = (ascii + key).chr
    end

  elsif downLetters.include?(ascii.chr)
    if (ascii + key) > 122
      difference = (ascii+key) - 122
      new_letter = (96 + difference).chr
    else
      new_letter = (ascii + key).chr
    end
   
  end

  end
  combine_key = addKey.join
  

end
binding.pry
cipher('ZZZest',26)
