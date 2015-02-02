require 'spec_helper'

describe 'Currency' do
  let(:money_paise) {Currency.new_paise(150)}
  let(:money_rupees) {Currency.new_rupees(3)}
  let(:money_combo1) {Currency.new(1, 50)}
  let(:money_combo2) {Currency.new(0, 150)}
  let(:money_0) {Currency.new(0, 0)}
  let(:money_sum) {Currency.new_rupees(3)}


  it 'equivalence to see if the conversion is accurate' do
    expect(money_rupees).to eq(money_sum)
    expect(money_combo1).to eq(money_paise)
  end

  it 'sorts the array of money objects' do
  expect([money_paise, money_0, money_rupees].sort{|money1, money2| money1.paise <=> money2.paise}).to eq([money_0, money_paise, money_rupees])
  end
  
describe 'addition' do
  it 'addition' do
    expect(money_paise + money_combo1).to eq(money_sum)
  end

  it 'symmetric addition' do
    expect(money_paise + money_combo1).to eq(money_combo1 + money_paise)
  end
  it 'associative addition' do
    expect(money_paise + (money_combo1 + money_combo2)).to eq((money_paise + money_combo1) + money_combo2)
  end
end

it 'subtraction' do
  expect(money_sum - money_combo1).to eq(money_paise)
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

  it 'should compare money object with nil' do
    expect(money_paise).not_to eq(nil)
  end

  it 'should compare money object with object of different Class' do
    expect(money_paise).not_to eq(1)
  end

end

end
