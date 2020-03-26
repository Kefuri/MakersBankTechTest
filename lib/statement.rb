class Statement
  def self.print_statement(transaction_history, account)
    if transaction_history.length == 0
      puts "date || credit || debit || balance"
      return
    end
    balance = account.get_balance
    puts "date || credit || debit || balance"
    puts "#{transaction_history[0].get_date} || #{transaction_history[0].get_amount.to_s + ".00"} || || #{balance.to_s + ".00"}"
  end
end