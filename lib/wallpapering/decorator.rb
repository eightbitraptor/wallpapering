module Wallpapering
  class Decorator < SimpleDelegator
    def class
      __getobj__.class
    end
  end
end
