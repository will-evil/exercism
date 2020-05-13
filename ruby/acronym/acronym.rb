module Acronym
  def self.abbreviate(str)
    str.split(/[\s-]/).map{|el| el[0] }.join.upcase
  end
end
