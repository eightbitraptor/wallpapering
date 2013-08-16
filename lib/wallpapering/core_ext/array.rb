class Array
  def map_as(klass)
    warn "[DEPRECATED] `map_as` has been deprecated in favour of `map(&Decorator)`"
    map{ |e| klass.new(e) }
  end
end
