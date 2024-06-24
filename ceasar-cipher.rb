def ceasar_cipher(string,key)
  arr = string.split('')

  number_arr = []
  arr.each do |char|
    if (/[A-Za-z]/).match?(char)
      number_arr << char.ord    #ord converts only a-z characters into integers
    else
      number_arr << char
    end
  end

  mod_num_arr = number_arr.map do |n|
    if (n.is_a? Integer)
      n+key
    else
      n
    end
  end

  mod_char_arr = mod_num_arr.map do |new_n| 
    if new_n.is_a? Integer
      new_n.chr     #chr converts the integers back to characters
    else
      new_n
    end
  end

  mod_string = mod_char_arr.join()
  p mod_string
end

ceasar_cipher(gets.chomp,gets.chomp.to_i)