class Transaction
  def initialize(transaction_type)
    @transaction_type = transaction_type
  end
  
  def get_type
    return @transaction_type
  end
end