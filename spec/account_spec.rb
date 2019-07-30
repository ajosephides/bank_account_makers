# frozen_string_literal: true

require 'account'

describe Account do
  let(:transaction_double) {double :transaction}
  let(:statement_double) {double :statement}
  let(:account) { Account.new(transaction_double) }


  describe '#deposit' do
    it 'increases the number of transactions by 1' do
      allow(transaction_double).to receive(:new).with(1000.00, 'deposit', 1000.00)
      account.deposit(1000.00)
      expect(account.transactions.length).to eq(1)
    end
  end

  describe '#withdraw' do
    it 'increases the number of transactions' do
      allow(transaction_double).to receive(:new).with(1000.00, 'deposit', 1000.00)
      allow(transaction_double).to receive(:new).with(500.00, 'withdrawal', 500.00)
      account.deposit(1000.00)
      account.withdraw(500.00)
      expect(account.transactions.length).to eq(2)
    end
  end

  describe '#statement' do
    it 'returns a statement of transactions' do
      allow(transaction_double).to receive(:new).with(1000.00, 'deposit', 1000.00)
      account.deposit(1000.00)
      allow(statement_double).to receive(:print).with(account.transactions).and_return(
        "date || credit || debit || balance\n30/07/2019 || 1000.00 || || 1000.00"
      )
      expect(account.statement(statement_double)).to eq("date || credit || debit || balance\n30/07/2019 || 1000.00 || || 1000.00")
    end
  end
end
