# Build an ATM Dispensing Method in Ruby
require 'rspec'

def atm total, denominations
  raw_data = denominations.inject({}) do  |hash, denomination|
    hash[denomination] = total.divmod(denomination)
    total -= total.divmod(denomination).first * denomination
    hash
  end
  raw_data.map do |k,v|
    raw_data[k] = v.first
  end
  raw_data
end

describe 'ATM' do
  it 'dispenses correct denominations to the users' do
    expect(atm 110, [100,20,10,5]).to eq({100=>1, 20=>0, 10=>1, 5=>0})
  end
end
