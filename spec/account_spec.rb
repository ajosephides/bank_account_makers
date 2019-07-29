# frozen_string_literal: true

require 'account'

describe Account do
  let(:transaction_double) {double :transaction}
  let(:account) { Account.new(transaction_double) }

  describe '#deposit' do
    it 'increases the number of transactions by 1' do
      allow(transaction_double).to receive(:new).with(1000, 'deposit')
      account.deposit(1000.00)
      expect(account.transactions.length).to eq(1)
    end
  end

  describe '#withdraw' do
    it 'increases the number of transactions' do
      allow(transaction_double).to receive(:new).with(1000, 'deposit')
      allow(transaction_double).to receive(:new).with(500, 'withdrawal')
      account.deposit(1000.00)
      account.withdraw(500.00)
      expect(account.transactions.length).to eq(2)
    end
  end
end
