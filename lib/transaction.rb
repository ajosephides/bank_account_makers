require 'date'

class Transaction

  def initialize(amount, type)
    @amount = amount
    @type = type
    @date = Time.now.utc
  end

end