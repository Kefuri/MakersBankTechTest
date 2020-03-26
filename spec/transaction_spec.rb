require 'transaction'

describe Transaction do

  context "#type" do
    it "should return deposit as the transaction type" do
      deposit = Transaction.new("Deposit", 100)
      expect(deposit.type).to eq("Deposit")
    end

    it "should return withdraw as the transaction type" do
      withdraw = Transaction.new("Withdrawal", 100)
      expect(withdraw.type).to eq("Withdrawal")
    end
  end
  
  context "#amount" do
    it "should return the deposit amount when initialized" do
      deposit = Transaction.new("Deposit", 300)
      expect(deposit.amount).to eq(300)
    end
  end

  before do
    @fake_time = Time.new
    allow(Time).to receive(:new).and_return(@fake_time)
  end

  context "#date" do
    it "Should return the date that the account was made on" do
      expect(Time).to receive(:new)
      deposit = Transaction.new("Deposit", 300)
      expect(deposit.date).to eq(Time.new.strftime("%d/%m/%Y"))
    end
  end
end
