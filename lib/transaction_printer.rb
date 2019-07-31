module TransactionPrinter

  def self.print(transaction)
    "#{format_date(transaction.date)} || #{format_amount(transaction.amount)} || || #{format_amount(transaction.balance)}"
  end

  private

  def self.format_date(date)
    year = date.year
    month = date.month
    day = date.day
    "#{day}/#{month}/#{year}"
  end

  def self.format_amount(amount)
    '%.2f' %  amount
  end
end