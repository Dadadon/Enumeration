require './my_enumerable'

class MyList
  include MyEnumerable

  def initialize
    @list = []
  end

  def append(element)
    @list << element
  end

  # rubocop:disable Style/ExplicitBlockArgument
  def each
    @list.each { |element| yield element }
  end
  # rubocop:enable Style/ExplicitBlockArgument
end
