words = []
word = nil
sorted_words = []

puts "Enter any number of words below. When you are finished enter an empty string."

while word != ""
  word = gets.chomp
  words.push(word)
end

words.each do |word|
  i = 0
  if (sorted_words.length > 0)
    while word > sorted_words[i]
      i += 1
    end
  end
  sorted_words.insert(i, word)
end

puts sorted_words
