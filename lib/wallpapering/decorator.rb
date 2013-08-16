module Wallpapering
  class Decorator < SimpleDelegator
    def class
      __getobj__.class
    end

    def self.to_proc
      ->(obj){ self.new(obj) }
    end
  end
end
