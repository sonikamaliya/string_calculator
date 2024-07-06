require './string_calculator.rb'

RSpec.describe StringCalculator do
  describe 'String Calculator' do
    it "Initilize number string with add method" do 
      allow(StringCalculator).to receive(:add)
    end
  end

  describe '#add method' do
    it "accept string" do
      allow(StringCalculator).to receive(:add).with("1,2")
    end

    it "return nil for blank string" do
      expect(StringCalculator.add("")).to eq(nil)
    end

    it "return self for single number" do
      expect(StringCalculator.add("0")).to eq(0)
      expect(StringCalculator.add("10")).to eq(10)
    end

    it "sum two number if no negative include in string" do
      expect(StringCalculator.add("1,2")).to eq(3)
    end

    it "reject string delimiters and sum value from string" do
      expect(StringCalculator.add("1,2")).to eq(3)
      expect(StringCalculator.add("1,2,3")).to eq(6)
    end

    it "reject any tyoe of delimiters and sum value from string" do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
      expect(StringCalculator.add("//[*][%]\n1*2%3")).to eq(6)
    end

    it "return/raise exception if string contains negative number" do
      expect { StringCalculator.add("1,-2") }.to raise_error("Negative numbers not allowed: -2")
    end

    it "return/raise exception with comma seperated numbers if string contains more then 1 negative numbers" do
      expect { StringCalculator.add("1,-2, -3") }.to raise_error("Negative numbers not allowed: -2, -3")
    end
  end
end