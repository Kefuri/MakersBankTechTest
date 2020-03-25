require 'transaction'

describe Transaction do

  context "#get_type" do
    it "should return deposit as the transaction type" do
      deposit = Transaction.new("Deposit", 100)
      expect(deposit.get_type).to eq("Deposit")
    end

    it "should return withdraw as the transaction type" do
      withdraw = Transaction.new("Withdrawal", 100)
      expect(withdraw.get_type).to eq("Withdrawal")
    end
  end
  
  context "#get_amount" do
    it "should return the deposit amount when initialized" do
      deposit = Transaction.new("Deposit", 300)
      expect(deposit.get_amount).to eq(300)
    end
  end

  before do
    @fake_time = Time.new
    allow(Time).to receive(:new).and_return(@fake_time)
  end

  context "#get_date" do
    it "Should return the date that the account was made on" do
      expect(Time).to receive(:new)
      deposit = Transaction.new("Deposit", 300)
      expect(deposit.get_date).to eq(Time.new.strftime("%d/%m/%Y"))
    end
  end
end