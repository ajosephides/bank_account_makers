class Account
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end



  def deposit(amount, date)
    @balance = @balance + amount
    @transactions.push({:amount => amount, :date => date})
  end

  def withdraw(amount, date)
    @balance = @balance - amount
  end

  def print
    return 'date || credit || debit || balance'
  end

end