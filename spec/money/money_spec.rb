require 'spec_helper'

describe 'Currency' do
	let(:paise) {Currency.new_paise(150)}
	let(:rupees) {Currency.new_rupees(1.50)}
	let(:cash) {Currency.new_rupees_paise(1, 50)}
	let(:cash_sum) {Currency.new_rupees(3)}
	
		it 'tests equivalence' do
			expect(paise). == rupees
			expect(rupees). == cash
			expect(cash). == paise
		end

		it 'tests addition of Currency' do
			expect(paise+rupees). == cash_sum
		end
end