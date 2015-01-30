#Currency accepts values in terms of rupees,paise or both and gives the combined values
class Currency

	attr_reader :value

	def initialize(value)
    @value = value
	end

	def self.new_paise(paise)
		self.new(paise/100)
	end

	def self.new_rupees(rupees)
		self.new(rupees)
	end

	def self.new_rupees_paise(rupees, paise)
		self.new(rupees+paise/100)
	end

	def +(currency)
		@value+currency.value
	end

	def ==(currency)
		return false if currency.is_a?(Currency)
		@value==currency.value
	end
end
