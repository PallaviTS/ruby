require 'rspec'
def occurrence_of_chars(str)
  hash = {}
  str.chars.map do |letter|
    hash[letter] ? hash[letter] += 1 : hash[letter] = 1
  end
  hash
end

describe 'Occurrence Of Character' do
  it 'returns the count of times each char appears in given string' do
    expect(occurrence_of_chars("pallavi")).to eq({"p"=>1, "a"=>2, "l"=>2, "v"=>1, "i"=>1})
  end
end





