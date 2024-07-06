# Calculate numbers from string if no negative number present
class StringCalculator
  def self.add(string_arr)
    @string_arr = string_arr

    extract_numbers

    if @negative_numbers.empty?
      return @numbers.map(&:to_i).reduce(:+)
    else
      raise "Negative numbers not allowed: #{@negative_numbers.join(', ')}"
    end
  end

  def self.extract_numbers
    @numbers = @string_arr.split(/[^-\d]/).reject(&:empty?)
    @negative_numbers = @string_arr.scan(/-\d/)
  end
end