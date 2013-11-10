# Problem Statement

# Given a word consisting of lowercase English letters, write a program to remove duplicates from the word. The characters in the output must preserve the same order, as their first appearance in the original word.

# Input Format

# The input consists of several test cases.
# The first line of the input file contains a positive integer T, the number of test cases.
# Then, T lines follow, each containing a single word W (no spaces, only lowercase English letters).

# Output Format

# The output must contain exactly T lines, each line containing a single word, the required answer.

#URL : http://www.hackerearth.com/problem/algorithm/the-lord-of-the-strings-1/



no_of_times = Integer(gets.chomp)

no_of_times.times do

   single_word = String(gets.chomp)
   p single_word.scan(/./).uniq.join

end