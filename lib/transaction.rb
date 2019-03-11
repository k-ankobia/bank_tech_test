class Transaction
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end

  def withdrawl(amount)
    @balance -= amount
  end

end
