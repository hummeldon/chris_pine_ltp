def englishNumber number
  if number < 0
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  numString = ''

  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

  left = number
  write = left/1000000000000
  left = left - write*1000000000000

  if write > 0
    trillions = englishNumber write
    numString += trillions + ' trillion'
    if left > 0
      numString += " "
    end
  end

  write = left/1000000000
  left = left - write*1000000000

  if write > 0
    billions = englishNumber write
    numString += billions + ' billion'
    if left > 0
      numString += " "
    end
  end

  write = left/1000000
  left = left - write*1000000

  if write > 0
    millions = englishNumber write
    numString += millions + ' million'
    if left > 0
      numString += " "
    end
  end

  write = left/1000
  left  = left - write*1000

  if write > 0
    thousands = englishNumber write
    numString += thousands + ' thousand'
    if left > 0
      numString += " "
    end
  end

  write = left/100
  left  = left - write*100

  if write > 0
    hundreds  = englishNumber write
    numString = numString + hundreds + ' hundred'

    if left > 0
      numString = numString + ' '
    end
  end

  write = left/10
  left  = left - write*10

  if write > 0
    if ((write == 1) and (left > 0))
      numString = numString + teenagers[left-1]
      left = 0
    else
      numString = numString + tensPlace[write-1]
    end

    if left > 0
      numString = numString + '-'
    end
  end

  write = left
  left  = 0

  if write > 0
    numString = numString + onesPlace[write-1]
  end

  numString
end

bottles = 8
bottlesEng = englishNumber bottles

while bottles != 0
  puts "#{bottlesEng} bottles of beer on the wall."
  puts "#{bottlesEng} bottles of beer."
  puts "You take one down, pass it around."
  bottles -= 1
  bottlesEng = englishNumber bottles

  if bottles == 1
    puts "#{bottlesEng} more bottle of beer on the wall"
  else
    puts "#{bottlesEng} bottles of beer on the wall"
  end

  if bottles == 1
    puts "#{bottlesEng} more bottle of beer on the wall."
    puts "#{bottlesEng} more bottle of beer."
    puts "You take one down, pass it around."
    bottles -= 1
    puts "No more bottles of beer on the wall."
  end
end
