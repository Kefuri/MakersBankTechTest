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
    Transaction.new("Deposit", amount)
  end

  def withdraw(amount)
    raise "Cannot withdraw negative amount" if amount.negative?

    raise "Cannot withdraw more than in account" if (@balance - amount).negative?

    @balance -= amount
    Transaction.new("Withdrawal", amount)
  end
end