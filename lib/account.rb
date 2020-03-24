class Account

  def initialize(balance = 0)
    @balance = balance
  end

  def get_balance
    return @balance
  end
  
  def deposit(amount)
    raise "Cannot deposit negative amounts" if amount.negative?
    
    @balance += amount
  end
end