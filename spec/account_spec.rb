require 'account'

describe Account do
  describe '#print' do
    it 'should be able to print a statement with correct headings' do
      account = Account.new
      expect(account.print).to eq('date || credit || debit || balance')
    end
  end

  describe '#deposit' do
    it 'allow a customer to add credit to their account and their balance will increase' do
      account = Account.new
      account.deposit(1000.00, '10/01/2012')
      expect(account.balance).to eq(1000.00)
    end
  end




end

