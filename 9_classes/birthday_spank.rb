months_eng = ['january', 'february', 'march', 'april', 'may', 'june', 'july', 'august', 'september', 'october', 'november', 'december']

answer = ""
current_date = Time.new

while answer != "y"
  answer = ""
  puts "What year were you born in?"
  year = gets.chomp.to_i
  puts "What month were you born in?"
  month = gets.chomp.downcase
  if month.to_i == 0
    month = months_eng.index(month) + 1
  else
    month = month.to_i
  end
  puts "What day were you born on?"
  day = gets.chomp.to_i

  puts "Ah, so you were born on #{month}/#{day}/#{year}? (y/n)"
  while answer != "y" && answer != "n"
    answer = gets.chomp.downcase
    if answer == "n"
      puts "Oh ok, please input your correct information."
      puts ""
    elsif answer != "y"
      puts "Oh you fucked up. Please type either 'y' or 'n'."
    end
  end
end

birth_date = Time.mktime(year, month, day)
spankings = ((current_date - birth_date) / 60 / 60 / 24 / 365).to_i

puts "Alright so if my calculations are correct you will receive #{spankings} spanks"
