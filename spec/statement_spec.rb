require 'statement'

describe Statement do
  context '.print_balance' do
    it 'Can print bank statement title' do
      expect { subject.print_balance }.to output("date || credit || debit || balance").to_stdout
    end
  end

  context '#date' do
    it 'Can print the current date' do
      expect { subject.get_date }.to output("2019-03-11").to_stdout
    end
  end
end
