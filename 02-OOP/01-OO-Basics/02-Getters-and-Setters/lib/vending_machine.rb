class VendingMachine
  # TODO: add relevant getter/setter to this class to make the scenarios work properly.
  attr_reader :user_balance_cents, :snack_price_cents
  attr_accessor :snack_count


  def initialize(snack_price_cents, snack_count)
    @user_balance_cents = 0
    @snack_count = snack_count
    @snack_price_cents = snack_price_cents
  end

  def insert_coin(input_cents)
    # TODO: what happens to @snack_count, @user_balance_cents and @snack_price_cents
    # when the user inserts a coin?
    @user_balance_cents += input_cents
  end

  def buy_snack
    # TODO: what happens to @snack_count, @user_balance_cents and @snack_price_cents
    # when the user pushes a button to buy a Snack?
    if snack_count.zero? || user_balance_cents <= snack_price_cents
      @snack_count = snack_count
    else
      @snack_count -= 1
      @user_balance_cents = user_balance_cents - snack_price_cents
    end
  end
end
