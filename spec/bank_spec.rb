require'bank.rb'

describe Bank do 
  context '#printBalance' do
  it "Can print bank statement title" do
  expect {subject.printBalance().to output('date || credit || debit || balance')} 
  end 
  
  it "Can print a statement with the current balance and time" do
  expect {subject.printBalance().to output('date || credit || debit || balance')} 
  end 
end

  context '#deposit' do
  it "Can deposit an amount into the account" do 
    bank = Bank.new
    expect {bank.deposit(100)}.to change {bank.balance}.by(100)
  end 
end


  context '#withdrawl' do
  it "Can withdrawl an amount into the account" do 
    bank = Bank.new
    expect {bank.withdrawl(200)}.to change {bank.balance}.by(-200)
  end 
end

end
