class Statement
  def self.print_statement(transaction_history)
    log = transaction_history.get_transaction_log
    puts "date || credit || debit || balance\n" + log.reverse.join("\n")
  end
end
