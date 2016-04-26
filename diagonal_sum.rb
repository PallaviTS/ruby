# coding: utf-8
# Given a square matrix of size N×NN×N, calculate the absolute difference between the sums of its diagonals.

#                                                                                                  Input Format

# The first line contains a single integer, NN. The next NN lines denote the matrix's rows, with each line containing NN space-separated integers describing the columns.

# Output Format

# Print the absolute difference between the two sums of the matrix's diagonals as a single integer.
#!/bin/ruby

n = gets.strip.to_i
a = Array.new(n)
for a_i in (0..n-1)
    a_t = gets.strip
    a[a_i] = a_t.split(' ').map(&:to_i)
end
p_d = 0
s_d = 0
for p_i in (0..n-1)
  p_d += a[p_i][p_i]
  s_d += a[p_i][n-1]
  n = n-1
end
puts (p_d - s_d).abs
