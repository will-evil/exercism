class Series
  def initialize(str)
    @str = str
  end

  def slices(size)
    raise ArgumentError, 'size longer than line length' if @str.size < size

    @str.chars.each_cons(size).map(&:join)
  end
end
