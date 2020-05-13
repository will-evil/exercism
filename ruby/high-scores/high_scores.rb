require 'forwardable'

class HighScores
  extend Forwardable

  attr_reader :scores

  def_delegator :scores, :last, :latest
  def_delegator :scores, :max,  :personal_best

  def initialize(scores)
    @scores = scores
  end

  def personal_top_three
    scores.sort.reverse.take(3)
  end

  def latest_is_personal_best?
    personal_best.eql? latest
  end
end
