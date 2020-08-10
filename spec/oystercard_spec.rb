require 'oystercard'
describe Oystercard do
  it 'oystercard to interact with balance' do
    card = Oystercard.new
    expect(card).to respond_to(:balance)
  end

  it 'has a balance of zero' do
    expect(subject.balance).to eq(0)
  end

  describe "#top_up" do 
    it "top up the balance" do 
      expect(subject).to respond_to(:top_up).with(1).argument
    end

    it "top up the card with 10$" do 
      subject.top_up(10)
      expect(subject.balance).to eq 10
    end

  end

end
