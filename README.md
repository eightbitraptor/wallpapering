# Wallpaper

Wallpaper is a really simple implementation of the decorator pattern for use in Rails applications

## Installation

Add this line to your application's Gemfile:

    gem 'wallpaper'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install wallpaper

## Usage

Basic Decorators are classes that inherit from `Wallpaper::Decorator`. They accept an object to decorate as the single argument for the initializer. They maintain the interface of the decorated object and are entirely transparent. You can add (and remove) methods if you wish, you can override methods - super will do what you expect.

to create a Decorator just do the following:

    class WithSugar < Wallpaper::Decorator
      def calories
        super + 50
      end
    end

    coffee_with_sugar = WithSugar.new(Coffee.new))

You can also easily decorate an array of objects (useful with ActiveRecord finders)

    # app/controllers/posts_controller.rb
    def index
      @posts = Post.all.map_as(PostPresenter) # Returns an array of Presented Posts!
    end

## Contributing

Basic contribution guidelines are as follows. I'm always amenable to patches and pull requests however please bear in mind that Wallpaper is designed to be pretty much the simplest thing that can work. Also no patches will be accepted without accompanying tests. Thanks :)

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Thanks

Cheers [Russell](http://rsslldnphy.com/) for `map_as`
