# coding: utf-8
# A Discrete Mathematics professor has a class of NN students. Frustrated with their lack of discipline, he decides to cancel class if fewer than KK students are present when class starts.

# Given the arrival time of each student, determine if the class is canceled.

# Input Format

# The first line of input contains TT, the number of test cases.

# Each test case consists of two lines. The first line has two space-separated integers, NN (students in the class) and KK (the cancelation threshold).
# The second line contains NN space-separated integers (a1,a2,…,aNa1,a2,…,aN) describing the arrival times for each student.

# Note: Non-positive arrival times (ai≤0ai≤0) indicate the student arrived early or on time; positive arrival times (ai>0ai>0) indicate the student arrived aiai minutes late.

# Output Format

# For each test case, print the word YES if the class is canceled or NO if it is not.

# Constraints

# 1≤T≤101≤T≤10
# 1≤N≤10001≤N≤1000
# 1≤K≤N1≤K≤N
# −100≤ai≤100,where i∈[1,N]−100≤ai≤100,where i∈[1,N]
# Note
# If a student arrives exactly on time (ai=0)(ai=0), the student is considered to have entered before the class started.

#!/bin/ruby
def solution(a, k)
  counter = 0
  a.each do |el|
    counter += 1 if el <= 0
  end
  puts counter >= k ? 'NO' : 'YES'
end

t = gets.strip.to_i
for a0 in (0..t-1)
  n,k = gets.strip.split(' ')
  n = n.to_i
  k = k.to_i
  a = gets.strip
  a = a.split(' ').map(&:to_i)
  solution(a, k)
end
