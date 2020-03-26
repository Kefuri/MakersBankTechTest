require 'transaction_history'

describe TransactionHistory do
  let(:transaction) { double("Deposit") }
  
  it 'should return an empty array when checking the log' do
    history = TransactionHistory.new
    expect(history.transaction_log).to eq([])
  end

  context '#add_to_log' do
    it 'should add a log to the array' do
      transaction_history = TransactionHistory.new
      allow(transaction).to receive(:type).and_return("Deposit")
      allow(transaction).to receive(:amount).and_return(100)
      allow(transaction).to receive(:date).and_return("10/10/1010")
      transaction_history.add_to_log(transaction)
      
      expect(transaction_history.transaction_log.length).to eq(1)
      expect(transaction_history.transaction_log).to eq(["10/10/1010 || 100.00 || || 100.00"])
    end
  end
end
  