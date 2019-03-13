require_relative 'helper'

class Account
  include Helper
  attr_reader :balance, :transaction

  def initialize
    @balance = 0
    @transaction = []
  end

  def deposit(amount)
    @balance += amount
    @transaction << [date, amount, '', @balance]
  end
  
  def withdrawl(amount)
    @balance -= amount
    @transaction << [date, '', amount, @balance]
  end
end
