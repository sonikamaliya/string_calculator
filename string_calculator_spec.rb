# string_calculator_spec.rb
require 'rspec'
require_relative 'string_calculator'

RSpec.describe StringCalculator do
  describe 'String Calculator' do
    subject { StringCalculator.new }

    it "Initilize number string with add method" do 
      expect(StringCalculator.instance_methods).to include(:add)
    end

    it 'For empty string it returns 0' do
      expect(subject.add("")).to eq(0)
    end

    it 'Returns the number itself for a single number string' do
      expect(subject.add("1")).to eq(1)
      expect(subject.add("5")).to eq(5)
    end

    it 'It adds two numbers' do
      expect(subject.add("1,2")).to eq(3)
    end

    it 'It adds multiple given numbers' do
      expect(subject.add("1,2,3")).to eq(6)
      expect(subject.add("1,2,3,6")).to eq(12)
    end

    it 'Allow the add method to handle new lines between numbers instead of commas' do
      expect(subject.add("1\n2,3")).to eq(6)
    end

    it 'raises an error while calling add with a negative number' do
      expect { subject.add("1,-2") }.to raise_error("Negative numbers not allowed: -2")
    end
  end
end