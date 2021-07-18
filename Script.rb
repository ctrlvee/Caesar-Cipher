require 'pry-byebug'

def cipher(txt, key)
  @txt = txt
  @key = key
  @ascii_txt = txt.bytes
  returnWithkey()
end

def addToUpper(og_ascii)
  new_ascii = og_ascii
  @key.times do
    new_ascii += 1
    if new_ascii > 90
      new_ascii = 65
    end
  end
  new_ascii.chr
end

def addToLower(og_ascii)
 # binding.pry
  new_ascii = og_ascii
  @key.times do
    new_ascii += 1
    if new_ascii > 122
      new_ascii = 97
    end
  end
  new_ascii.chr
end

#Update with correct conditional to identify if "og_ascii" exists between the values
def checkPosition (og_ascii)
  if og_ascii.between?(65,90)
    addToUpper(og_ascii)
  elsif og_ascii.between?(97,122)
    addToLower(og_ascii)
  else #returns whitespac/punctuation as the same
    og_ascii.chr
    binding.pry
  end
end

def returnWithkey
  add_key = @ascii_txt.map do |og_ascii|
    checkPosition(og_ascii)
  end
  puts add_key.join()
end



cipher('Wow! Don/t',4)
