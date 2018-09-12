number = 0

def clock (proc)
  number = 0

  hour = Time.now.hour
  if (hour > 12)
    hour -= 12
  elsif (hour == 0)
    hour += 12
  end

  hour.times do
    proc.call
  end
end

dong = Proc.new do
  puts "DONG!"
end

counting = Proc.new do
  puts number += 1
end

clock (dong)
clock (counting)
