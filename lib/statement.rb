class Statement
  attr_reader :date
  def print_balance
    'date || credit || debit || balance'
  end

  def get_date
    @date = Time.now.strftime('%Y-%m-%d')
    @date
  end
end
