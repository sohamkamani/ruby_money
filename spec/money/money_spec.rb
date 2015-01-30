require 'spec_helper'

describe 'Currency' do
	let(:paise) {Currency.new_paise(150)}
	let(:rupees) {Currency.new_rupees(1.50)}
	let(:cash) {Currency.new_rupees_paise(1, 50)}
	let(:cash_sum) {Currency.new_rupees(3)}

		it 'tests equivalence' do
			expect(paise).to eq(rupees)
			expect(rupees).to eq(cash)
			expect(cash).to eq(paise)
		end

		it 'tests addition of Currency' do
			expect(paise+rupees).to eq(cash_sum)
		end
		it 'displays currency as a string' do
			expect(cash.to_s).to eq("1 rupees 50 paise")
		end
end