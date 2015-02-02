#Currency accepts values in terms of rupees,paise or both and gives the combined values,adds,subtracts and has ability of sorting

class Currency

  attr_reader :paise

  def initialize(rupees, paise)
    @paise = rupees * 100 + paise 
  end

  def self.new_paise(paise)
    self.new(0, paise)
  end

  def self.new_rupees(rupees)
    self.new(rupees, 0)
  end

  def +(currency)
    Currency.new(0, @paise + currency.paise)
  end

  def -(currency)
    Currency.new(0, @paise - currency.paise)
  end

  def ==(other)
    return false unless other.class == Currency
    @paise == other.paise
  end

  def to_s
    "#{paise_to_rupees} rupees #{paise_remainder} paise"
  end

  private

  def paise_to_rupees
  	@paise / 100
  end

  def paise_remainder
    @paise % 100
  end

end
