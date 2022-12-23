require './myEnumerable'

class MyList
  include MyEnumerable
  
  def initialize
    @list = []
  end
  
  def append(el)
    @list << el
  end
  
  def each
    @list.each { |el| yield el }
  end
end
