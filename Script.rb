require 'pry-byebug'

def cipher(txt, key)
  @txt = txt
  @key = key
  @ascii_txt = txt.bytes
  returnWithkey()
end

#Update with correct conditional to identify if "og_ascii" exists between the values
def checkPosition (og_ascii)
  if og_ascii.between?(65,90)
    puts 'upper'
  elsif og_ascii.between?(97,122)
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
