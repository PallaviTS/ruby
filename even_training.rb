# coding: utf-8
# Maria loves playing soccer. Because she wants to play professionally when she grows up, she tracks her training by marking her calendar with a 11 on the days that she trained, and a 00 on the days she did not. She also loves math, and wants your help connecting her soccer training with what she's learning about even and odd numbers in school.

# Given nn days of Maria's calendar history, print whether or not she trained for an even number of days (either 𝚈𝚎𝚜Yes or 𝙽𝚘No), followed by the total number of days she trained.

# Note: Code demonstrating how to read input from stdin is provided in your editor.

# Input Format

# The first line contains an integer, nn, denoting the number of days Maria tracked in her calendar.
# The next line contains nn space-separated integers describing whether or not Maria trained each day. Recall that the number 11 indicates that she did train, and 00 indicates she did not.

# Constraints

# 1≤n≤1051≤n≤105
# Output Format

# Your output should consist of 22 space-separated values on a single line. For the first value, you should print 𝚈𝚎𝚜Yes if Maria trained for an even number of days or 𝙽𝚘No if she did not. For the second value, you should print a single integer denoting the total number of days Maria trained.

#!/bin/ruby

n = gets.strip.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)
count = a.count(1)
if count.even? && count != 0
  puts "Yes #{count}"
else
  puts "No #{count}"
end
