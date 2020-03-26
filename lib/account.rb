require_relative 'transaction'
require_relative 'transaction_history'
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
    add_to_transaction_history(Transaction.new("Deposit", amount))
  end

  def withdraw(amount)
    raise "Cannot withdraw negative amount" if amount.negative?

    raise "Cannot withdraw more than in account" if (@balance - amount).negative?

    @balance -= amount
    add_to_transaction_history(Transaction.new("Withdrawal", amount))
  end

  def get_transaction_history
    return @transaction_history
  end

  private 

  def add_to_transaction_history(transaction)
    @transaction_history.add_to_log(transaction)
  end
end