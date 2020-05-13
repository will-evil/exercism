module Year
  def self.leap?(year)
    mod = lambda{|num| year % num == 0 }
    mod.call(4) && !mod.call(100) || mod.call(400)
  end
end
