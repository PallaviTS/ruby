# A string is said to be complete if it contains all the characters from a to z. Given a string, check if it complete or not.

# Input
# First line of the input contains the number of strings N. It is followed by N lines each contains a single string.

# Output
# For each test case print "YES" if the string is complete, else print "NO"

# Constraints
# 1 <= N <= 10
# The length of the string is at max 100 and the string contains only the characters a to z

#URL

# http://www.hackerearth.com/problem/algorithm/complete-string-4/

no_of_times = Integer(gets.chomp)

while no_of_times > 0

  string = String(gets.chomp)
    if string.downcase.chars.uniq.sort.join == "abcdefghijklmnopqrstuvwxyz"
      puts "YES"
    else
      puts "NO"
    end
  no_of_times -= 1

end