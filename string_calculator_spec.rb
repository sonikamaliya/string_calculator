require './string_calculator.rb'

RSpec.describe StringCalculator do
  describe 'String Calculator' do
    it "Initilize number string" do 
      string_calc = StringCalculator.new(number="1,2")
      # expect(string_calc.number).to eq
      allow(StringCalculator).to receive(:new).with(number="1,2").and_return(string_calc)
    end
  end
end