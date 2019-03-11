require 'statement'

describe Statement do
  context '.printBalance' do
    it 'Can print bank statement title' do
      expect { subject.printBalance.to output('date || credit || debit || balance') }
    end
  end

  context '#date' do
    it 'Can print the current date' do
      # @date = Time.now.strftime('%Y-%m-%d')
      # allow(Time).to receive(:now).and_return(@date)
      # expect { subject.get_date }.to output(@date).to_stdout
      expect { subject.get_date.to output("2019-03-11")}
    end
  end
end
