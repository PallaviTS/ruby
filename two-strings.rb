def check_for_substring(a,b)
  a.squeeze.chars.each do |el|
    return "YES" if b.include? el
  end
  return "NO"
end
def solution(a,b)
  if a.length > b.length
    check_for_substring(b,a)
  else
    check_for_substring(a,b)
  end
end
t = gets.strip.to_i
for a0 in (0..t-1)
  a = gets.strip
  b = gets.strip
  puts solution a,b
end
