module MyEnumerable
  def all?
    @list.each do |element|
      return false unless yield element
    end
    true
  end

  def any?
    @list.each do |element|
      return true if yield element
    end
    false
  end

  def filter
    result = []
    @list.each do |element|
      result << element if yield element
    end
    result
  end
end
