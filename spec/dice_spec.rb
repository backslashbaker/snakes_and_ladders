require_relative '../lib/dice'

describe 'dice' do
  it 'has an array of numbers 1-6' do
    expect(dice).is_a? Array
  end
  it 'returns a random number' do
    expect(dice).is_a? Integer
  end
end
