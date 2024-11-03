class StringCalculator
  def add(str)
    return 0 if str.empty?
    
    delimiters = [",", "\n"]
    scan_pattern = Regexp.union(delimiters)
    numbers_list = str.split(scan_pattern).map(&:to_i)

    numbers_list.inject(&:+)
  end
end