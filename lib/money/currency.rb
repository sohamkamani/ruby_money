#Currency accepts values in terms of rupees,paise or both and gives the combined values

class Currency

	attr_reader :value

	def initialize(value)
    @value = value
	end

	def self.new_paise(paise)
		self.new(paise.to_f / 100)
	end

	def self.new_rupees(rupees)
		self.new(rupees.to_f)
	end

	def self.new_rupees_paise(rupees, paise)
		self.new(rupees.to_f + paise.to_f / 100)
	end

	def +(currency)
		Currency.new(@value + currency.value)
	end

	def ==(other)
		@value==other.value
	end

	def to_s
		"#{@value.to_i} rupees #{(@value*100%100).to_i} paise"
	end
end
