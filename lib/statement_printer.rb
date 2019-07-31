require_relative './transaction_printer'

module StatementPrinter

  def self.print(transactions, transaction_printer = TransactionPrinter)
    statement = []
    header = 'date || credit || debit || balance'
    transactions = order_transactions(transactions)
    statement.push(header)
    transactions.each { |transaction| statement.push(transaction_printer.print(transaction)) }
    statement.join("\n")
  end

  private

  def self.order_transactions(transactions)
    transactions.sort_by { |transaction| transaction.date }.reverse
  end
end