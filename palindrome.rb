require 'rspec'

def palindrome?(str)
  str_length = str.length - 1
  str_length.downto(0).each.with_index do |item, i|
    return str[item].downcase == str[i].downcase
  end
end

describe 'Check if string is palindrome' do
  it 'returns true for palindrome string' do
    expect(palindrome?('Tacocat')).to eq(true)
  end
  it 'returns false for not palindrome string' do
    expect(palindrome?('pallavi')).to eq(false)
  end
   it 'returns true for palindrome string' do
    expect(palindrome?('alla alla')).to eq(true)
  end
  it 'returns false for not palindrome string' do
    expect(palindrome?('pallavi pallavi')).to eq(false)
  end
end
