class Oystercard

  attr_reader :balance

  TOPUP_LIMIT = 90
  MINIMUM_AMOUNT = 1

  def initialize
    @balance = 0
    @in_use
  end

  def top_up(money)
    fail "£90 limit reached" if @balance >= TOPUP_LIMIT

    @balance += money

  end


  def touch_in
    fail "Insufficient amount" if @balance < MINIMUM_AMOUNT
    @in_use = true
  end

  def touch_out
    deduct(MINIMUM_AMOUNT)
    @in_use = false
  end

  def in_journey?
    @in_use
  end

  private

  def deduct(money)
    @balance -= money
  end

end
