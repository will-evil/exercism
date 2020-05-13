module Complement
  DNA_MAP = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }.freeze

  def self.of_dna(dna_strand)
    dna_strand.chars.map(&DNA_MAP).join
  end
end

