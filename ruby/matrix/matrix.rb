class Matrix
  attr_reader :rows

  def initialize(str)
    @rows = str.each_line.map do |row|
      row.split.map(&:to_i)
    end
  end

  def columns
    @columns ||= rows.transpose
  end
end
