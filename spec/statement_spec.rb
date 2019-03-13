require 'statement'


describe Statement do
  context '.print_balance' do
    it 'Can print bank statement title' do
      expect { subject.print_balance }.to output('date || credit || debit || balance').to_stdout
    end
  end

  context '#date' do
    it 'Can print the current date' do
      @date = Time.now
      allow(Time).to receive(:now).and_return(@date)
      expect { subject.date }.to output(@date.strftime('%Y-%m-%d')).to_stdout
    end
  end

  context '#format_document' do
    xit 'can print a transaction in the correct format' do
      expect { subject.format_statement }.to output('correct').to_stdout
    end
  end

  it 'can print each transaction in the correct format' do 
  
  end
end
