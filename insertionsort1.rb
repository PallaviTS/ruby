def  insertionSort(ar, count)
  (0..count-1).to_a.reverse.each do |el|
    if ar[el-1] > ar[el]
      a = ar[el]
      ar[el] = ar[el-1]
      puts ar.join(' ')
      ar[el-1] = a
    else
      puts ar.join(' ')
      break
    end
  end
end
count = gets.to_i
ar = gets.strip.split.map(&:to_i)
insertionSort(ar, count)
