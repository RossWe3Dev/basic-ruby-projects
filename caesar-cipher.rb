def caesar_cipher(string,cipher_key)

  number_arr = string.each_char.map do |char|
  char = (/[A-Za-z]/).match?(char)? char.ord : char   # #ord converts only a-z characters into integers
  end

  mod_char_array = number_arr.map do |n_ord|    # accepted integers from #ord method are 
    if (n_ord.to_i.between?(65, 90)) then             # (A = 65, Z = 90)
      new_ord = ((n_ord - 65 + cipher_key) % 26) + 65
      new_char = new_ord.chr    
    elsif (n_ord.to_i.between?(97, 122)) then         # (a = 97, z = 122)
      new_ord = ((n_ord - 97 + cipher_key) % 26) + 97
      new_char = new_ord.chr
    else
      n_ord
    end
  end

  mod_string = mod_char_array.join
  mod_string
end


puts "What string would you like to encrypt?"
string = gets.chomp

puts "What will be the key to decipher your secret message?"
cipher_key = gets.chomp.to_i

encrypted_string = caesar_cipher(string,cipher_key)
puts "Encrypted message: '#{encrypted_string}'"