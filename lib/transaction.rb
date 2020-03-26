class Transaction
  def initialize(transaction_type, amount)
    @transaction_type = transaction_type
    @amount = amount
    @date = Time.new
  end

  def type
    return @transaction_type
  end

  def amount
    return @amount
  end
  
  def date
    return @date.strftime("%d/%m/%Y")
  end
end
