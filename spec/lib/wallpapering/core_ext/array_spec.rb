require_relative '../../../../lib/wallpapering/core_ext/array'

describe Array do
  class Foo
    def initialize(n); end
  end

  subject{ [1,2,3].map_as(Foo) }

  it 'maps the new class onto each element of the array' do
    subject.each do |elem|
      expect(elem.class).to be(Foo)
    end
  end
end
