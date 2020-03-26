class Statement
  def self.print_statement(transaction_history, account)
    if transaction_history.length == 0
      puts "date || credit || debit || balance"
      return
    end
    puts "date || credit || debit || balance"
    puts transaction_history[0]
  end
end