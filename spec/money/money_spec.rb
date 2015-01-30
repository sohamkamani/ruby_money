require 'spec_helper'

describe 'Currency' do
	let(:money_paise) {Currency.new_paise(150)}
	let(:money_rupees) {Currency.new_rupees(3)}
	let(:money_combo) {Currency.new_rupees_paise(1, 50)}
	let(:money_sum) {Currency.new_rupees(3)}

		it 'tests equivalence' do
			expect(money_rupees).to eq(money_sum)
			expect(money_combo).to eq(money_paise)
		end

		it 'tests addition of Currency' do
			expect(money_paise+money_combo).to eq(money_sum)
		end

		it 'displays currency as a string' do
			expect(money_combo.to_s).to eq("1 rupees 50 paise")
		end

end