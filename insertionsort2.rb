def  insertionSort(ar, count)
  for i in (0..count-1)
    j = i+1
    while j > 0 && j < count
      if ar[j] < ar[j-1]
        a = ar[j]
        ar[j] = ar[j-1]
        ar[j-1] = a
      end
      j -= 1
    end
    puts ar.join(' ')
  end
end
count = gets.to_i
ar = gets.strip.split.map(&:to_i)
insertionSort(ar, count)
