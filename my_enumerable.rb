module MyEnumerable
  def all?
    each { |ele| return false unless yield ele }
    true
  end
  
  def any?
    each { |ele| return true if yield ele }
    false
  end
  
  def filter
    result = []
    each { |ele| result << ele if yield ele }
    result
  end
end
  