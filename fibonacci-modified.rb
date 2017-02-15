# tn+2 = tn + (tn+1)2
def solution(a,b,n)
  if n > 0
    sum = a*a + b
    a = b
    a = sum
    puts sum
    solution(a, b, n-1)
  end
end


a,b,n = gets.strip.split.map(&:to_i)
solution(a,b,n-2)
