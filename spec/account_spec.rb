require 'account'

describe Account do
  describe '#print' do
    it 'should be able to print a statement with correct headings' do
      account = Account.new
      expect(account.print).to eq('date || credit || debit || balance')
    end
  end
end