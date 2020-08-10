class Oystercard

  attr_reader :balance

  TOPUP_LIMIT = 90

  def initialize
    @balance = 0
  end

  def top_up(money)
    fail "£90 limit reached" if @balance >= TOPUP_LIMIT

    @balance += money

  end

  def deduct(money)
    @balance -= money
  end

end
