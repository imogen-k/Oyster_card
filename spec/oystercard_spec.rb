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

    it "top up the card with 10£" do
      subject.top_up(10)
      expect(subject.balance).to eq 10
    end

    it 'throws an error if it tries to go over maximum limit' do
      subject.top_up(Oystercard::TOPUP_LIMIT)
      expect { subject.top_up(1) }.to raise_error "£90 limit reached"
    end

  end

  describe "#deduct" do
    it "Oystercard respond to deduct" do
      expect(subject).to respond_to(:deduct).with(1).argument
    end

    it "Remove 10£ from the total amount" do
      subject.top_up(11)
      expect(subject.deduct(10)).to eq 1
    end

  end

describe '#touch_in' do
  it 'responds to touch in method' do
    expect(subject).to respond_to(:touch_in)
  end

  it "Trow error if the balance is less then 1£" do
    expect { subject.touch_in }.to raise_error "Insufficient amount"
  end


end

describe '#touch_out' do
  it 'responds to touch out method' do
    expect(subject).to respond_to(:touch_out)
  end
end

describe "#in_journey?" do
  it 'responds to in journey? method' do
    expect(subject).to respond_to(:in_journey?)
  end

  it 'checks if user is in journey' do
    subject.top_up(10)
    subject.touch_in
    expect(subject.in_journey?).to eq(true)
  end
end


end
