class TransactionHistory
  def initialize
    @transaction_log = []
  end

  def log
    return @transaction_log
  end
  
  def add_to_log(transaction_to_add)
    @transaction_log << transaction_to_add
  end
end