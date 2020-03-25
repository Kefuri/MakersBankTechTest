class Transaction
  def initialize(transaction_type, amount)
    @transaction_type = transaction_type
    @amount = amount
    @date = Time.new
  end

  def get_type
    return @transaction_type
  end

  def get_amount
    return @amount
  end
  
  def get_date
    return @date.strftime("%d/%m/%Y")
  end
end