# frozen_string_literal: true
require_relative './transaction'
require_relative './statement_printer'

class Account
  attr_reader :transactions

  def initialize(transaction = Transaction)
    @balance = 0.0
    @transactions = []
    @transaction = transaction
  end

  def deposit(amount)
    @balance = @balance + amount
    transaction = @transaction.new(amount, 'deposit', @balance)
    @transactions.push(transaction)
  end

  def withdraw(amount)
    @balance = @balance - amount
    transaction = @transaction.new(amount, 'withdrawal', @balance)
    @transactions.push(transaction)
  end

  def statement(statement_printer = StatementPrinter)
    statement_printer.print(@transactions)
  end

  private

  def calc_balance(amount)
  
  
  end

end
