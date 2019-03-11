require 'statement'

describe Statement do
  context '.print_balance' do
    it 'Can print bank statement title' do
      expect { subject.print_balance }.to output("date || credit || debit || balance").to_stdout
    end
  end

  context '#date' do
    it 'Can print the current date' do
      @date = Time.now
      allow(Time).to receive(:now).and_return(@date)
      expect { subject.get_date }.to output(@date.strftime('%Y-%m-%d')).to_stdout
    end
  end
end
