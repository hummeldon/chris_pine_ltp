bottles = 99

while bottles != 0
  puts "#{bottles} bottles of beer on the wall."
  puts "#{bottles} bottles of beer."
  puts "You take one down, pass it around."
  bottles -= 1

  if bottles == 1
    puts "#{bottles} more bottle of beer on the wall"
  else
    puts "#{bottles} bottles of beer on the wall"
  end

  if bottles == 1
    puts "#{bottles} more bottle of beer on the wall."
    puts "#{bottles} more bottle of beer."
    puts "You take one down, pass it around."
    bottles -= 1
    puts "No more bottles of beer on the wall."
  end
end
