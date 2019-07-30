require 'date'

class Transaction

  def initialize(amount, type, balance)
    @amount = amount
    @type = type
    @date = Time.now.utc
    @balance = balance
  end

end