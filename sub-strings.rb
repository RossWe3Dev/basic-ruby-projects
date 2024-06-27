dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string,collection)
  arr_str = string.downcase.split(/[\W]/)
  p arr_str

  matching_arr_str = arr_str.select do |word|
    collection.include?(word)
  end
  p matching_arr_str

  match = matching_arr_str.reduce(Hash.new(0)) do |match_key, word|
    match_key[word] += 1
    match_key
  end
  p match
end

substrings("below, low hills below", dictionary)