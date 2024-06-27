dictionary = ["below","down","go","going","horn","how","howdy","it","i", "e","low","own","part","partner","sit"]

def substrings(string,dictionary)
  words_arr = string.downcase.split(/[\W]/)

  matching_words_arr = []
  words_arr.each do |str_word|
    matching_words_arr << str_word if dictionary.include?(str_word)
    dictionary.each do |dict_word|
      matching_words_arr << dict_word if (str_word.include?(dict_word) && str_word != dict_word)
    end
  end

  match = matching_words_arr.reduce(Hash.new(0)) do |match_key, word|
    match_key[word] += 1
    match_key
  end

  puts "This where the matches in our dictionary:"
  p match
end

puts "What string do you want to check?"
string = gets.chomp

substrings(string, dictionary)