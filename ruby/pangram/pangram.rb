module Pangram
  LATTERS = ('a'..'z').freeze

  def self.pangram?(sentence)
    down_sentence = sentence.downcase
    LATTERS.all? {|char| down_sentence.include? char }
  end
end
