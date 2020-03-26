require 'account'

describe Account do

  let(:transaction) { double :transaction }
  let(:transaction_history) { double :transaction}

  context "#initialize" do
    it "should make an instance of transaction history when initialized" do 
      allow(TransactionHistory).to receive(:new).and_return(transaction_history)
      account = Account.new
      expect(account.get_transaction_history).to eq(transaction_history)
    end
  end

  context '#get_balance' do
    it 'should return the default balance of 0 when asked' do
      account = Account.new
      expect(account.get_balance).to eq(0)
    end
    
    it "should return the amount the account was initialized with" do
      account = Account.new(100)
      expect(account.get_balance).to eq(100)
    end
  end

  context '#deposit' do
    it 'should add the deposited amount to the account balance' do
      account = Account.new
      account.deposit(1000)
      expect(account.get_balance).to eq(1000)
    end

    it 'should not accept a negative number' do
      account = Account.new
      expect{ account.deposit(-1000) }.to raise_error("Cannot deposit negative amounts")
    end
  end
  
  context '#withdraw' do
    it 'should withdraw a given amount from the balance of the account' do
      account = Account.new(1000)
      account.withdraw(900)
      expect(account.get_balance).to eq(100)
    end

    it 'should withdraw from a deposited amount in the account' do
      account = Account.new
      account.deposit(100)
      account.withdraw(10)
      expect(account.get_balance).to eq(90)
    end

    it 'should not allow withdrawals that goes over the account balance' do
      account = Account.new
      account.deposit(10)
      expect{ account.withdraw(11) }.to raise_error("Cannot withdraw more than in account")
    end

    it 'should not allow withdrawals that are negative amounts' do
      account = Account.new
      expect{ account.withdraw(-10) }.to raise_error("Cannot withdraw negative amount")
    end
  end

  context 'logging transactions' do
    it "should create a new instance of a transaction on deposit" do
      account = Account.new
      expect(Transaction).to receive(:new).with(any_args, instance_of(Integer)).and_return(transaction)
      account.deposit(100)
    end

    it "should create a new instance of a transaction on withdrawal" do
      account = Account.new(150, transaction_history)
      expect(Transaction).to receive(:new).with(any_args, instance_of(Integer)).and_return(transaction)
      expect(transaction_history).to receive(:add_to_log).with(transaction)
      account.withdraw(100)
    end
  end

end