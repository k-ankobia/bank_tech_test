require 'account.rb'

describe Account do
  let(:day) {'12/03/2019'}
  let(:an_amount) {3000}

  context '#deposit' do
    it 'Can deposit an amount into the account' do
      bank = Account.new
      expect { bank.deposit(100) }.to change { bank.balance }.by(100)
    end

    it 'upon deposit user can return a transaction' do 
      bank = Account.new
      allow(bank).to receive(:date).and_return(day)
      bank.deposit(an_amount)
      expect(bank.transaction).to eq([[day, an_amount, bank.balance]])
      
    end
  end

  context '#withdrawl' do
    it 'Can withdrawl an amount into the account' do
      bank = Account.new
      expect { bank.withdrawl(200) }.to change { bank.balance }.by(-200)
    end
  end

  # context '#balance' do 
  # it 'can store the balance after each transaction ' do 
  # bank = Account.new 
  # bank.withdrawl(1000)
  # expect { bank.all_transactions}.to eq()
  # end
  # end
end
