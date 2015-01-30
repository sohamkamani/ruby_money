require 'spec_helper'

describe 'Currency' do
  let(:money_paise) {Currency.new_paise(150)}
  let(:money_rupees) {Currency.new_rupees(3)}
  let(:money_combo1) {Currency.new(1, 50)}
  let(:money_combo2) {Currency.new(0, 150)}
  let(:money_sum) {Currency.new_rupees(3)}

  it 'equivalence to see if the conversion is accurate' do
    expect(money_rupees).to eq(money_sum)
    expect(money_combo1).to eq(money_paise)
  end

  it 'addition' do
    expect(money_paise + money_combo1).to eq(money_sum)
  end

  it 'should display as a string' do
    expect(money_combo1.to_s).to eq("1 rupees 50 paise")
  end

  describe 'Equality' do
  	it 'should follow reflexivity' do
  		expect(money_paise).to eq(money_paise)
  	end

  	it 'should follow symmetry' do
  		expect(money_paise == money_combo1). to eq(money_combo1 == money_paise)
  	end

  	it 'should follow transitivity' do
  		expect((money_paise == money_combo1)&&(money_combo1==money_combo2)).to eq(money_paise == money_combo2)
  	end
  end

end
