# frozen_string_literal: true
require_relative './transaction'
require_relative './statement_printer'

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

  def statement(statement_printer = StatementPrinter)
    statement_printer.print(@transactions)
  end



end
