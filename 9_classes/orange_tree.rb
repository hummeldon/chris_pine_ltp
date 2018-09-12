class OrangeTree
  def initialize
    @height = 3
    @age = 0
    @oranges = 0
    @dead = false
    puts ""
    puts "Congrats on planting your new orange tree!"
    status
  end

  def status
    line_width = 45
    @separator = ("-" * 45)
    puts ""
    puts @separator
    puts "Orange Tree Status".center(line_width)
    puts "Current Height:".ljust(line_width / 2) + "#{@height}".rjust(line_width / 2)
    puts "Current Age:".ljust(line_width / 2) + "#{@age}".rjust(line_width / 2)
    puts "Number of Oranges:".ljust(line_width / 2) + "#{@oranges}".rjust(line_width / 2)
    puts @separator
    puts ""
  end

  def increase_height
    @height += (15 / @age) * 2
  end

  def produce_oranges
    @oranges += ((@age.to_f / 15.0) * 35.0).to_i
  end

  def one_year_passes
    @age += 1
    @oranges = 0
    puts "Another year has passed... If your tree had any leftover oranges they have been lost."
    puts ""
    if @age == 15
      puts "Your tree has died. Remember not the sadness but the happiness and oranges she brought you."
      @dead = true
      exit
    elsif @age > 0 && @age < 3
      increase_height
      puts "Good news! Your tree has grown a lot this year. However, it is still too young to bear fruit. Maybe next year..."
    else
      increase_height
      produce_oranges
      puts "It looks like your tree has grown and produced some fruit!"
    end
    status
  end

  def pick_an_orange
    if @oranges != 0
      puts "You pick an orange and eat it later that day. DELICIOUS!"
      @oranges -= 1
    else
      puts "You frantically search for just one orange on your precious tree but it turns out there are none left for the year. :("
    end
    status
  end
end

options = ["pick", "year", "status"]
precious = OrangeTree.new

while !@dead
  puts "Enter a command: (pick, year, status, end)"
  command = gets.chomp.downcase
  puts ""
  case command
  when "pick"
    precious.pick_an_orange
  when "year"
    precious.one_year_passes
  when "status"
    precious.status
  when "end"
    puts "Destroying tree and ending program. Goodbye!"
    @dead = true
  else
    puts "Command doesn't exist."
  end
end
