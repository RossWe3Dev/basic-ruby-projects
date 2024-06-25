def ceasar_cipher(string,cipher_key)
  arr = string.split('')

debugger

  number_arr = []
  arr.each do |char|
    converted_character = (/[A-Za-z]/).match?(char)? char.ord : char   #ord converts only a-z characters into integers
    number_arr << converted_character
  end

mod_num_arr = number_arr.map do |n|
    n = (n.is_a? Integer)? n+cipher_key : n
  end

  mod_char_arr = mod_num_arr.map do |new_n| 
    if new_n.is_a? Integer
      new_n.chr     #chr converts the integers back to characters (a = 97, z = 122)(A = 65, Z = 90)
    else
      new_n
    end
  end

  mod_string = mod_char_arr.join()
  p mod_string
end

ceasar_cipher('ab c',3)

#ceasar_cipher(gets.chomp,gets.chomp.to_i)