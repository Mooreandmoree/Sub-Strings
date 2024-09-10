def substrings(word, dictionary)
  word_downcased = word.downcase
  dictionary.reduce(Hash.new(0)) do |hash, substrings|
    count = word_downcased.scan(substrings).length
    hash[substrings] = count if count > 0
    hash
    
  end
end 
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
word = "Howdy, is it going lad"

result = substrings(word, dictionary)
puts result 