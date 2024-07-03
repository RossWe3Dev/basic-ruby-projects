# frozen_string_literal: true

def caesar_cipher(string, cipher_key)
  # #ord converts characters into integers, #chr integers into characters

  mod_char_array = string.each_char.map do |char|
    if /[A-Z]/.match?(char) # used letter to integer ranges from #ord method are
      mod_char = ((char.ord - 65 + cipher_key) % 26) + 65   # (A = 65, Z = 90)
      mod_char.chr
    elsif /[a-z]/.match?(char)
      mod_char = ((char.ord - 97 + cipher_key) % 26) + 97   # (a = 97, z = 122)
      mod_char.chr
    else
      char
    end
  end

  mod_char_array.join
end

puts 'What string would you like to encrypt?'
string = gets.chomp
puts 'What will be the key to decipher your secret message?'
cipher_key = gets.chomp.to_i

encrypted_string = caesar_cipher(string, cipher_key)
puts "Encrypted message: '#{encrypted_string}'"
