require 'rspec'
require 'benchmark'

def largest_item(arr)
  max = arr[0]
  arr.each_with_index do |item, i|
    if arr[i] > max
      max = arr[i]
    end
  end
  max
end

arr = Array.new(100000) { rand 10000 }

Benchmark.bm(10) do |r|
  r.report('Each:') { largest_item(arr) }
  r.report('Sort:') { arr.sort.last }
  r.report('Max:') { arr.max }
end

describe 'Finds largest item in an given array' do
  it 'return largest item' do
    expect(largest_item(arr)).to eq (arr.max)
  end
end

