require'bank.rb'

describe Bank do 
  it "Can print bank statement title" do
  expect {subject.printBalance().to output('date || credit || debit || balance')} 
  end 

  context '#deposit' do
  it "Can deposit an amount into the account" do 
    bank = Bank.new
    expect {bank.deposit(100)}.to change {bank.balance}.by(100)
  end 
end
end
