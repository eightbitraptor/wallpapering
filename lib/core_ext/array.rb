class Array
  def map_as(klass)
    map{ |e| klass.new(e) }
  end
end
