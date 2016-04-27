# coding: utf-8
# Given an integer, NN, traverse its digits (dd1,dd2,...,ddn) and determine how many digits evenly divide NN (i.e.: count the number of times NN divided by each digit ddi has a remainder of 00). Print the number of evenly divisible digits.be unique, so each occurrence of the same evenly divisible digit should be counted (i.e.: for N=111N=111, the answer is 33).mat

# The first line is an integer, TT, indicating the number of test cases.
# The TT subsequent lines each contain an integer, N
# Constraints
# 1≤T≤151≤T≤15
# 0<N<1090<N<109
# Output Format

# For every test case, count and print (on a new line) the number of digits in NN that are able to evenly divide NN.

#!/bin/ruby


def solution(n)
  return n.size if n.to_s.squeeze.to_i == 1
  a = n.to_s.chars.map(&:to_i)
  count = 0
  a.each do |el|
    next if el.zero?
    count += 1 if n % el == 0
  end
  count
end

t = gets.strip.to_i
for a0 in (0..t-1)
  n = gets.strip.to_i
  puts solution(n)
end
