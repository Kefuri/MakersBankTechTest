class Account

  def initialize(balance = 0, history = TransactionHistory.new)
    @balance = balance
    @transaction_history = history
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

  def get_transaction_history
    return @transaction_history
  end
end