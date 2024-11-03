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
  end
end