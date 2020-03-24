require 'account'

describe Account do
  context '#balance' do
    it 'should return the default balance of 0 when asked' do
      account = Account.new
      expect(account.get_balance).to eq(0)
    end
  end
end