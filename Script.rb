require 'pry-byebug'
upLetters = 

def cipher(txt, key)
  broken = txt.bytes
  addKey = broken.map do |ascii|
    
    if /Z/ =~ "#{ascii.chr}" 
      puts 'hi'
    end
    new_letter = (ascii + key).chr
  end
  combine_key = addKey.join
 # binding.pry
end

cipher('ZZZest',2)
