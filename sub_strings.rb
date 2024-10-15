# frozen_string_literal: true

dictionary = %w[below down go going horn how howdy it i e low own part partner
                sit]

def substrings(string, dictionary)
  words_arr = string.downcase.split(/\W/)

  matching_words_arr = []
  dictionary.each do |dict_word|
    words_arr.each do |str_word|
      matching_words_arr << dict_word if str_word.include?(dict_word)
    end
  end

  matches_hash = matching_words_arr.each_with_object(Hash.new(0)) do |word, match_key|
    match_key[word] += 1
  end

  puts 'These are the matches in our dictionary:'
  p matches_hash
end

puts 'What string do you want to check?'
string = gets.chomp

substrings(string, dictionary)
