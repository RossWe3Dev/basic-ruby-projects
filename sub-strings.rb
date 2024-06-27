dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string,collection)
  words_arr = string.downcase.split(/[\W]/)
  p words_arr

  matching_words_arr = []
  words_arr.each do |str_word|
    matching_words_arr << str_word if collection.include?(str_word)
    collection.each do |dict_word|
      matching_words_arr << dict_word if (str_word.include?(dict_word) && str_word != dict_word)
    end
  end
  p matching_words_arr

  match = matching_words_arr.reduce(Hash.new(0)) do |match_key, word|
    match_key[word] += 1
    match_key
  end
  p match
end

substrings("Below, low hills!", dictionary)