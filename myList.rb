module MyEnumerable
    def all?
      each { |el| return false unless yield el }
      true
    end
  
    def any?
      each { |el| return true if yield el }
      false
    end
  
    def filter
      result = []
      each { |el| result << el if yield el }
      result
    end
end
  
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
