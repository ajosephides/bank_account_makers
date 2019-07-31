# frozen_string_literal: true

require 'transaction_printer'
require 'time'

describe TransactionPrinter do
  let(:transaction_deposit_double) { double :transaction, amount: 1000.00, type: 'deposit', date: Time.parse('2019-07-01 04:00:00 +0100'), balance: 1000.00 }
  let(:transaction_withdrawal_double) { double :transaction, amount: 500.00, type: 'withdrawal', date: Time.parse('2019-07-02 04:00:00 +0100'), balance: 1000.00 }

  describe '#print' do
    it 'formats a deposit transaction correctly' do
      expect(subject.print(transaction_deposit_double)).to eq('1/7/2019 || 1000.00 || || 1000.00')
    end

    it 'formats a withdrawal transaction correctly' do
      expect(subject.print(transaction_withdrawal_double)).to eq('2/7/2019 || || 500.00 || 1000.00')
    end
  end
end
