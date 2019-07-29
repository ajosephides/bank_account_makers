# frozen_string_literal: true

require 'account'

describe Account do
  let(:account) { Account.new }
  describe '#print' do
    it 'should be able to print a statement with correct headings' do
      account.deposit(1000.00, '10/01/2012')
      account.deposit(2000.00, '13/01/2012')
      account.withdraw(500.00, '14/01/2012')
      expect(account.print).to eq("date || credit || debit || balance\n14/01/2012 || || 500.00 || 2500.00\n13/01/2012 || 2000.00 || || 3000.00\n10/01/2012 || 1000.00 || || 1000.00")
    end
  end

  describe '#deposit' do
    it 'allow a customer to add credit to their account and their balance will increase' do
      account.deposit(1000.00, '10/01/2012')
      expect(account.balance).to eq(1000.00)
    end

    it 'increases the number of transactions by 1' do
      account.deposit(1000.00, '10/01/2012')
      expect(account.transactions.length).to eq(1)
    end
  end

  describe '#withdraw' do
    it 'allow a customer to add credit to their account and their balance will increase' do
      account.deposit(1000.00, '10/01/2012')
      account.withdraw(500.00, '11/01/2012')
      expect(account.balance).to eq(500.00)
    end

    it 'increases the number of transactions' do
      account.deposit(1000.00, '10/01/2012')
      account.withdraw(500.00, '11/01/2012')
      expect(account.transactions.length).to eq(2)
    end
  end
end
