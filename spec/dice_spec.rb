require './dice'

describe 'dice' do it 'returns a number' do
	expect(dice()).is_a? Integer
	end
end

describe 'dice' do it 'returns a random number ' do
	expect(dice()).to eq 1
	end
end