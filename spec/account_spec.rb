require 'account'

describe Account do
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

    it 'shoul dnot allow withdrawals that are negative amounts' do
      account = Account.new
      expect{ account.withdraw(-10) }.to raise_error("Cannot withdraw negative amount")
    end
  end
end