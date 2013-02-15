module Wallpaper
  class DecoratorGenerator < Rails::Generators::Base
    desc "generate a wallpaper generator"
    source_root File.expand_path('../templates', __FILE__)

    argument :decorator_name, :type => :string

    def create_decorator
      directory "app"
    end

    def filename
      decorator_name.
        downcase.
        underscore
    end

    def class_name
      decorator_name.
        underscore.
        camelize
    end
  end
end
