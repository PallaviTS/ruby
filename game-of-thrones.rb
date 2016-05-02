def solution(string)
  count = 0
  even = string.length.even?
  string.chars.group_by(&:chr).map { |k, v| count += 1 unless v.size.even? }
  if even && count == 0
    return "YES"
  else
    if count <= 1
      return "YES"
    else
      return "NO"
    end
  end
end


string = gets.chomp
puts solution string
