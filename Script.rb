require 'pry-byebug'

def cipher(txt, key)
  @txt = txt
  @key = key
  @ascii_txt = txt.bytes
  returnWithkey()
end

def checkPosition (og_ascii)
  case (og_ascii)
  when (65 <= og_ascii) || (og_ascii <= 90)
    puts 'upper'
  when (97 <= og_ascii) || (og_ascii <= 122)
    puts 'lower'
  end
end

def returnWithkey
  add_key = @ascii_txt.map do |og_ascii|
    checkPosition(og_ascii)
  end

end

binding.pry
cipher('ZZZest',4)
