require './my_enumerable'

class MyList
  include MyEnumerable

  def initialize
    @list = []
  end

  def append(element)
    @list << element
  end

  def each
    @list.each { |element| yield element }
  end
end
