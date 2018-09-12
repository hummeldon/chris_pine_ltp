answer = ""
bye_count = 0

puts "WHAT ARE YA SAYIN, SONNY?!"
while bye_count < 3
answer = gets.chomp
if answer.upcase == answer
  if answer == "BYE"
    puts "NO, I DIDN'T MAKE ANY PIE."
    bye_count += 1
    puts "OH, GOOD BYE SONNY." if bye_count == 3
  else
    bye_count = 0
    year = 1930 + rand(21)
    puts "NO, NOT SINCE #{year}"
  end
else
  bye_count = 0
  puts "HUH?! SPEAK UP, SONNY!"
end
end
