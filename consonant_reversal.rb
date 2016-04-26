# coding: utf-8
# Ritika gives NN strings to Semona and asks her to perform a consonant reversal on each string SS such that the indexed positions of its vowels (aa, ee , ii, oo, and uu) are unchanged but all the consonants are reversed. This means that each vowel must be at the same exact index before and after the reversal. Because the value of NN is very large, Semona wants your help accomplishing this with code!

# Given NN strings, reverse and print each string such that the positions of its vowels remain unchanged but all its consonants are reversed.

#                                                                                                                                    Input Format

# The first line contains an integer, NN, the number of strings.
#                                                        Each of the NN subsequent lines contains a string, SS, to be reversed.

#                                                                                                                      Constraints

# 1≤N≤10001≤N≤1000
# 1≤|Si|≤20001≤|Si|≤2000, where 0≤i<N0≤i<N
# Each string contains lowercase letters.
#                                 Output Format

# For each string SS received as input, print the consonant reversal of SS on a new line.

n = gets.strip.to_i
while (n != 0)
  arr = []
  input = gets.strip.chars
  input.each { |el| arr << el unless ['a','e','i','o','u'].include? el }
  arr = arr.reverse!
  counter = 0
  input.each do |el|
    unless ['a', 'e', 'i', 'o', 'u'].include? el
      input[input.index(el)] = counter
      counter = counter + 1
    end
  end
  input.each { |el| input[input.index(el)] = arr[el] if el.is_a? Integer }
  puts input.join("")
  n = n - 1
end
