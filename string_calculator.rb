class StringCalculator
  def add(str)
    return 0 if str.empty?
    
    delimiters = [",", "\n"]
    scan_pattern = Regexp.union(delimiters)
    numbers_list = str.split(scan_pattern).map(&:to_i)

    negatives = numbers_list.select{|x| x.negative? }
    raise "Negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?
    numbers_list.inject(&:+)
  end
end