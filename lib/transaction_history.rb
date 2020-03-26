class TransactionHistory
  def initialize
    @transaction_log = []
    @balance = 0
  end

  def get_transaction_log
    return @transaction_log
  end
  
  def add_to_log(transaction_to_add)
    @transaction_log << transaction_to_log(transaction_to_add)
  end

  private

  def transaction_to_log(transaction)
    if transaction.get_type == "Deposit"
      @balance += transaction.get_amount
      log = "#{transaction.get_date} || #{transaction.get_amount.to_s + ".00"} || || #{@balance.to_s + ".00"}"
    else
      @balance -= transaction.get_amount
      log = "#{transaction.get_date} ||  || #{transaction.get_amount.to_s + ".00"} || #{@balance.to_s + ".00"}"
    end
  end
end