module Wallpapering
  class Decorator < SimpleDelegator
    def class
      __getobj__.class
    end

    def self.to_proc
      proc { |object, *args| new(object, *args) }
    end
  end
end
