require 'rails_helper'

RSpec.describe Calculator, type: :service do
	describe '#add numbers' do
    it 'returns 0 for an empty string' do
      calculator = Calculator.new
      expect(calculator.add('')).to eq(0)
    end

    it 'returns the number for a single number' do
      calculator = Calculator.new
      expect(calculator.add('1')).to eq(1)
    end

    it 'returns the sum for two numbers' do
      calculator = Calculator.new
      expect(calculator.add('1,5')).to eq(6)
    end

    it 'handles numbers separated by new lines' do
      calculator = Calculator.new
      expect(calculator.add("1\n2,3")).to eq(6)
    end
  end
end