# string_calculator_spec.rb
require 'rspec'
require_relative 'string_calculator'

RSpec.describe StringCalculator do
  describe 'String Calculator' do
    subject { StringCalculator.new }

    it "Initilize number string with add method" do 
      expect(StringCalculator.instance_methods).to include(:add)
    end
  end
end