class Statement
  attr_reader :date
  def print_balance
    print "date || credit || debit || balance"
  end

  def get_date
    @date = Time.now.strftime('%Y-%m-%d')
    print @date
  end
end
