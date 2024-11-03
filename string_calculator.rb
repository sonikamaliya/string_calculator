class StringCalculator
  def add(str)
    return 0 if str.empty?
    
    delimiters = [",", "\n"]
    if str.start_with?("//")
      divide_string = str.split("\n", 2)
      delimiters << divide_string[0][2..-1]
      str = divide_string[1]
    end

    scan_pattern = Regexp.union(delimiters)
    numbers_list = str.split(scan_pattern).map(&:to_i)

    negatives = numbers_list.select{|x| x.negative? }
    raise "Negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?
    numbers_list.inject(&:+)
  end
end