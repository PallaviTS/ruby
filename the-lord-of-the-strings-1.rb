no_of_times = Integer(gets.chomp)

no_of_times.times do

   single_word = String(gets.chomp)
   p single_word.scan(/./).uniq.join

end