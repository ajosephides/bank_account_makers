class Account
  attr_reader :balance

  def initialize
    @balance = 0
  end



  def deposit(amount, date)
    @balance = @balance + amount  
  end
  
  def print
    return 'date || credit || debit || balance'
  end

end