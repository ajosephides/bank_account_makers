# frozen_string_literal: true

class Account
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount, date)
    @balance += amount
    @transactions.push(amount: amount, date: date, type: 'deposit', balance: @balance)
  end

  def withdraw(amount, date)
    @balance -= amount
    @transactions.push(amount: amount, date: date, type: 'withdrawl', balance: @balance)
  end

  def print
    output = []
    output.push('date || credit || debit || balance')
    @transactions.reverse.each do |transaction|
      if transaction[:type] == 'deposit'
        output.push("#{transaction[:date]} || #{'%.2f' % transaction[:amount]} || || #{'%.2f' % transaction[:balance]}")
      else
        output.push("#{transaction[:date]} || || #{'%.2f' % transaction[:amount]} || #{'%.2f' % transaction[:balance]}")
      end
    end
    output.join("\n")
  end
end
