class StringCalculator

  # Adding numbers from given string seperated by delimeters like [",". "\n", ";"]
  def add(str)
    return 0 if str.empty?
    
    delimiters = [",", "\n"]

    # if string contains custom delimeters get the custom delimeter and numbers from the string
    if str.start_with?("//")
      divide_string = str.split("\n", 2)
      delimiters << divide_string[0][2..-1]
      str = divide_string[1]
    end

    scan_pattern = Regexp.union(delimiters) #create pattern for match with the given string 
    numbers_list = str.split(scan_pattern).map(&:to_i)

    negatives = numbers_list.select{|x| x.negative? }
    raise "Negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?
    numbers_list.inject(&:+)
  end
end