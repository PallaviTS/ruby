require 'rspec'

class Array
  def at_least_four_characters?
    all? do |item|
      item.length >= 4
    end
   end
end
describe  'Four characters?' do
  it 'checks if an array contains elements that are all at least 4 chars long'  do 
  arr_one = %w{words that have size requirement}
  arr_two = %w{words that are not four characters length}
  expect(arr_one.at_least_four_characters?).to eq(true)
  expect(arr_two.at_least_four_characters?).to eq(false)
  end
end

