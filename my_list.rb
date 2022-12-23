require './my_enumerable'

class MyList
  include MyEnumerable

  def initialize
    @list = []
  end

  def append(ele)
    @list << ele
  end

  def each
    @list.each { |ele| yield ele }
  end
end
