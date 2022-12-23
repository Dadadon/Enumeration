require './my_enumerable'

class MyList
  include MyEnumerable

  def initialize
    @list = []
  end

  def append(elem)
    @list << elem
  end

  # rubocop:disable Style/ExplicitBlockArgument
  def each
    @list.each { |elem| yield elem }
  end
  # rubocop:enable Style/ExplicitBlockArgument
end
