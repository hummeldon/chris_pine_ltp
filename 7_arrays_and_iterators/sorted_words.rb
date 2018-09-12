words = []
word = nil

puts "Enter any number of words below. When you are finished enter an empty string."

while word != ""
  word = gets.chomp
  words.push(word)
end

puts words.sort
