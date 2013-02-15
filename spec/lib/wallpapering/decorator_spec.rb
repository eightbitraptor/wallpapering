require 'wallpapering'

module Wallpapering
  describe "inheriting from decorator" do
    class FooDecorator < Decorator
      def normal_method
      end

      def normal_method_that_calls_super
        super
      end
    end

    let(:decorated){ Object.new }

    subject{ FooDecorator.new(decorated) }

    it "delegates non existent methods to the decorated object" do
      decorated.should_receive(:foobar)
      subject.foobar
    end

    it "intercepts decorated methods" do
      decorated.should_not_receive(:normal_method)
      subject.normal_method
    end

    it "passes super to the decorated object" do
      decorated.should_receive(:normal_method_that_calls_super)
      subject.normal_method_that_calls_super
    end

    it "masquerades as the class of the decorated object" do
      expect(subject.class).to be(Object)
    end
  end
end
