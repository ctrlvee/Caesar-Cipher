require 'pry-byebug'
upLetters = ('A'..'Z').to_a
lowLetters = ('a'..'z').to_a

def cipher(txt, key)
  broken = txt.split(//)
  binding.pry
end

cipher('test',2)
