require 'securerandom'

TIMES = 1_000
count_draw = 0
count_winning = 0
count_losing = 0
TIMES.times do |x|

  info_prob = SecureRandom.random_number(TIMES/100)
  puts "Round no:#{x}" if (info_prob == 0)

  amount = SecureRandom.random_number(999) + 1
  count = 0
  original_amount = amount


  while ((count < 10_000_000) and (amount > 0))
    count = count + 1
    rand = SecureRandom.random_number(100)
    if (amount%3 == 0)
      if rand < 10
        amount += 1
      else
        amount -= 1
      end
    else
      if rand < 75
        amount += 1
      else
        amount -= 1
      end
    end
  end
  
  if (amount > original_amount)
    count_winning += 1
  elsif (amount < original_amount)
    count_losing += 1
  else
    count_draw +=1
  end

end

puts "Winning count: #{count_winning}"
puts "Losing count: #{count_losing}"
puts "Draw Count: #{count_draw}"
