# Get each character frequency of a given string

class CountEachLetter

def self.count_each_letter(string)
  word = string
  #create a hash to store the frequency of each letter, hash is initialized with 0.
  frequency = Hash.new(0)
  #get each character and store the corresponding frequency of it.
  word.each_char { |word| frequency[word.downcase] += 1 }
  return frequency
end
puts "Enter the string"
string = String(gets.chomp)

print count_each_letter(string);

end
