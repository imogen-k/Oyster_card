require 'oystercard'
describe Oystercard do
  it 'oystercard to interact with balance' do
    card = Oystercard.new
    expect(card).to respond_to(:balance)
  end

  it 'has a balance of zero' do
    expect(subject.balance).to eq(0)
  end

end
