# frozen_string_literal: true
require 'transaction'

class Account
  attr_reader :transactions

  def initialize(transaction = Transaction)
    @balance = 0
    @transactions = []
    @transaction = transaction
  end

  def deposit(amount)
    transaction = @transaction.new(amount, 'deposit')
    @transactions.push(transaction)
  end

  def withdraw(amount)
    transaction = @transaction.new(amount, 'withdrawal')
    @transactions.push(transaction)
  end

  # def print
  #   output = []
  #   output.push('date || credit || debit || balance')
  #   @transactions.reverse.each do |transaction|
  #     if transaction[:type] == 'deposit'
  #       output.push("#{transaction[:date]} || #{'%.2f' % transaction[:amount]} || || #{'%.2f' % transaction[:balance]}")
  #     else
  #       output.push("#{transaction[:date]} || || #{'%.2f' % transaction[:amount]} || #{'%.2f' % transaction[:balance]}")
  #     end
  #   end
  #   output.join("\n")
  # end

end
