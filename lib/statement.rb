class Statement

  def print_balance
    print "date || credit || debit || balance"
  end

  def date
    @date = Time.now.strftime('%Y-%m-%d')
    print @date
  end

  def format_statement
    print_balance 
  end
end
