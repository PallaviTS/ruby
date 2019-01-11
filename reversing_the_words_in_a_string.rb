require 'rspec'

def reverse_words(str)
  reversed_str = []
  str_as_words = str.split(' ')
  str_length = str_as_words.length - 1
  str_length.downto(0).each.with_index(0) do |str_i, i|
    reversed_str[i] = str_as_words[str_i]
  end
  reversed_str.join(' ')
end

describe 'Reverse the words in a string' do
  it 'returns "there Hey! for string "Hey! there"' do
    expect(reverse_words('Hey! there')).to eq('there Hey!')
  end
end
