class TransactionHistory
  def initialize
    @transaction_log = []
    @balance = 0
  end

  def transaction_log
    return @transaction_log
  end
  
  def add_to_log(transaction_to_add)
    @transaction_log << transaction_to_log(transaction_to_add)
  end

  private

  def transaction_to_log(transaction)
    debit = ""
    credit = ""
    if transaction.type == "Deposit"
      @balance += transaction.amount     
      credit = "#{transaction.amount}.00"
    else
      @balance -= transaction.amount
      debit = "#{transaction.amount}.00"
    end
    return "#{transaction.date} || #{credit} || #{debit} || #{@balance}.00"
  end
end
