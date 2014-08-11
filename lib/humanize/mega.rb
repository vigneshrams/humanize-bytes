module Humanize
  class Mega
    def initialize(value)
      @value = value
    end

    def value
      @value
    end

    def to_b
      Byte.new @value * 1024 * 1024
    end

    def to_k
      Kilo.new @value * 1024
    end

    def to_m
      self
    end

    def to_g
      Giga.new @value / 1024.0
    end

    def to_s(options = {})
      size = options.fetch(:decimal_digits, value.to_s.size)
      ("%.#{size}f" % value).to_f
    end
  end
end