require 'transaction.rb'

describe Transaction do

  context '#deposit' do
    it 'Can deposit an amount into the account' do
      bank = Transaction.new
      expect { bank.deposit(100) }.to change { bank.balance }.by(100)
    end
  end

  context '#withdrawl' do
    it 'Can withdrawl an amount into the account' do
      bank = Transaction.new
      expect { bank.withdrawl(200) }.to change { bank.balance }.by(-200)
    end
  end
end
