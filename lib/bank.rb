class Bank
attr_reader :balance

  def initialize
    @balance = 0
  end 

  def deposit(amount)
    @balance += amount
  end

  def printBalance
    'date || credit || debit || balance'
  end

end