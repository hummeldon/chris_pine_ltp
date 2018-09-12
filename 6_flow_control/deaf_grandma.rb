answer = ""

puts "WHAT ARE YA SAYIN, SONNY?!"
while answer != "BYE"
answer = gets.chomp
if answer.upcase == answer
  if answer == "BYE"
    puts "NO, I DIDN'T MAKE ANY PIE. YOU GET OUTTA HERE!"
  else
    year = 1930 + rand(21)
    puts "NO, NOT SINCE #{year}"
  end
else
  puts "HUH?! SPEAK UP, SONNY!"
end
end
