# coding: utf-8
# Sherlock Holmes suspects his archenemy, Professor Moriarty, is once again plotting something diabolical. Sherlock's companion, Dr. Watson, suggests Moriarty may be responsible for MI6's recent issues with their supercomputer, The Beast.

# Shortly after resolving to investigate, Sherlock receives a note from Moriarty boasting about infecting The Beast with a virus; however, he also gives him a clue—a number, NN. Sherlock determines the key to removing the virus is to find the largest Decent Number having NN digits.

# A Decent Number has the following properties:

# Its digits can only be 3's and/or 5's.
# The number of 3's it contains is divisible by 5.
# The number of 5's it contains is divisible by 3.
# If there are more than one such number, we pick the largest one.
# Moriarty's virus shows a clock counting down to The Beast's destruction, and time is running out fast. Your task is to help Sherlock find the key before The Beast is destroyed!

# Constraints
# 1≤T≤201≤T≤20
# 1≤N≤1000001≤N≤100000


# Input Format

# The first line is an integer, TT, denoting the number of test cases.

# The TT subsequent lines each contain an integer, NN, detailing the number of digits in the number.

# Output Format

# Print the largest Decent Number having NN digits; if no such number exists, tell Sherlock by printing -1.

def decent_number(n)
  for i in (0..n-1)
    for j in (0..n-1)
      if 5*i + 3*j == n
        return "5" * 3*j +  "3" * 5*i
      end
    end
  end
  return -1
end

def solution(n)
  puts decent_number(n)
end


t = gets.strip.to_i
for a0 in (0..t-1)
  n = gets.strip.to_i
  solution(n)
end
