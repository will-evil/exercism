class SpaceAge
  EARTH_SEC_PER_YEAR   = 31_557_600
  MERCURY_SEC_PER_YEAR = 7_600_543.81992
  VENUS_SEC_PER_YEAR   = 19_414_149.052176
  MARS_SEC_PER_YEAR    = 59_354_032.690079994
  JUPITER_SEC_PER_YEAR = 374_355_659.124
  SATURN_SEC_PER_YEAR  = 929_292_362.8848
  URANUS_SEC_PER_YEAR  = 2651_370_019.3296
  NEPTUNE_SEC_PER_YEAR = 5200_418_560.032001

  def initialize(sec)
    @sec = sec.to_f
  end

  { on_earth:   EARTH_SEC_PER_YEAR,
    on_mercury: MERCURY_SEC_PER_YEAR,
    on_venus:   VENUS_SEC_PER_YEAR,
    on_mars:    MARS_SEC_PER_YEAR,
    on_jupiter: JUPITER_SEC_PER_YEAR,
    on_saturn:  SATURN_SEC_PER_YEAR,
    on_uranus:  URANUS_SEC_PER_YEAR,
    on_neptune: NEPTUNE_SEC_PER_YEAR }.each {|method, value| define_method(method) { @sec / value } }
end
