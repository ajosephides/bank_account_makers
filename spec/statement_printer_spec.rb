require 'statement_printer'

describe StatementPrinter do

  let(:transaction_double) {double :transaction, amount: 1000.00, type: 'deposit', date: '2019-07-01 04:00:00 +0100', balance: 1000.00}
  let(:transaction_printer_double) {double :transaction_printer}


  describe '#print' do
    it 'prints a header and transaction' do
      transactions = [transaction_double]
      allow(transaction_printer_double).to receive(:print).with(transaction_double).and_return(
        "01/07/2019 || 1000.00 || || 1000.00"
      )
      expect(subject.print(transactions, transaction_printer_double)).to eq("date || credit || debit || balance\n01/07/2019 || 1000.00 || || 1000.00")
    end
  end
end