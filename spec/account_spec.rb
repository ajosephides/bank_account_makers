require 'account'

describe Account do

  let(:account) {Account.new}
  describe '#print' do
    it 'should be able to print a statement with correct headings' do
      expect(account.print).to eq('date || credit || debit || balance')
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

