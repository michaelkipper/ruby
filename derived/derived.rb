require 'byebug'

module MichaelKipper
  class Base
    attr_accessor :one
    attr_accessor :two

    def initialize(one, two="two", *args, **kwargs)
      @one = one
      @two = two
    end
  end

  class Derived < Base
    attr_accessor :three
    attr_accessor :four

    def initialize(three, four="four", *args, **kwargs)
      super(*args, **kwargs)
      @three = three
      @four = four
    end
  end
end

begin
  byebug
  x = MichaelKipper::Derived.new("3", one: "1")
  y = MichaelKipper::Derived.new("3", "4", "1", "2")
rescue StandardError => e
  puts e
end

byebug
