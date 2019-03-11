require 'statement'

describe Statement do
  context '#printBalance' do
    it 'Can print bank statement title' do
      expect { subject.printBalance.to output('date || credit || debit || balance') }
    end
  end
end
