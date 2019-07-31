# frozen_string_literal: true

# A user can view their statement. It should consist of all the transactions
# and the balance at each step. It should be in reverse chronological order (oldest
# transaction at the end).

require 'timecop'
require 'account'

describe Account do
  let(:account) { Account.new }
  describe '#statement' do
    it 'should be able to output a statement with correct headings, amounts,
    balances and in reverse chronological order' do
      account = Account.new
      t1 = Time.local(2012, 1, 10, 10, 0, 0)
      Timecop.travel(t1)
      account.deposit(1000.00)
      t2 = Time.local(2012, 1, 13, 10, 0, 0)
      Timecop.travel(t2)
      account.deposit(2000.00)
      t3 = Time.local(2012, 1, 14, 10, 0, 0)
      Timecop.travel(t3)
      account.withdraw(500.00)
      expect(account.statement).to eq("date || credit || debit || balance\n14/1/2012 || || 500.00 || 2500.00\n13/1/2012 || 2000.00 || || 3000.00\n10/1/2012 || 1000.00 || || 1000.00")
    end
  end
end
