def ceasar_cipher(string,cipher_key)

number_arr = string.each_char.map do |char|
  char = (/[A-Za-z]/).match?(char)? char.ord : char   # #ord converts only a-z characters into integers
end

debugger

mod_num_arr = number_arr.map do |n|
    n = (n.is_a? Integer)? n+cipher_key : n
  end

  mod_char_arr = mod_num_arr.map do |new_n| 
    if new_n.is_a? Integer
      if (new_n>122 || (new_n>90 && new_n<97))    # accepted integers from #ord method are (a = 97, z = 122)(A = 65, Z = 90)
        new_n = new_n - 26
      end
      new_n.chr     # #chr converts the accepted integers back to characters 
    else
      new_n
    end
  end

  mod_string = mod_char_arr.join
  p mod_string
end

ceasar_cipher('ab cz! Z',8)    # test

#ceasar_cipher(gets.chomp,gets.chomp.to_i)