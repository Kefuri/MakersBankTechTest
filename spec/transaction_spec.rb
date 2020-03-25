require 'transaction'

describe Transaction do
  it "should return deposit as the transaction type" do
    deposit = Transaction.new("Deposit")
    expect(deposit.get_type).to eq("Deposit")
  end

  it "should return withdraw as the transaction type" do
    withdraw = Transaction.new("Withdrawal")
    expect(withdraw.get_type).to eq("Withdrawal")
  end
end