module Grains
  SQUARES_NUM = 64

  def self.square(num)
    raise ArgumentError if num < 1 || num > SQUARES_NUM

    2 ** (num - 1)
  end

  def self.total
    2 ** SQUARES_NUM - 1
  end
end
