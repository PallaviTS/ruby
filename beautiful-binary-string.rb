def solution(ar)
  count = 0
  length = ar.length
  i = 0
  while i < length
    if ar[i] != 0
      i += 1
      next
    end
    if i+2 < length && ar[i..i+2] == [0,1,0]
       count += 1
       i += 2
    end
    i += 1
  end
  count
end
n = gets.to_i
ar = gets.strip.split('').map(&:to_i)
puts solution ar
