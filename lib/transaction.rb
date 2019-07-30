require 'date'

class Transaction

  attr_reader :amount, :type, :date, :balance

  def initialize(amount, type, balance)
    @amount = amount
    @type = type
    @date = Time.now.utc
    @balance = balance
  end

end