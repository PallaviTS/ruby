require 'rspec'

def longest_word(arr)
  return nil if arr.empty?
  arr_length = arr.map(&:length)
  arr[arr_length.index(arr_length.max)]
end

describe 'List of words' do
  it 'returns the length of the longest word' do 
    expect(longest_word(["Fermentum", "Elit", "Vestibulum", "Mattis", "Egestas"])).to eq("Vestibulum")
  end
  it 'returns nil for empty arr' do
    expect(longest_word([])).to eq(nil)
  end
end
