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
end