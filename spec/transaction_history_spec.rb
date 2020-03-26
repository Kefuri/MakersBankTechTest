require 'transaction_history'

describe TransactionHistory do
  let(:transaction) { double("Deposit") }
  
  it 'should return an empty array when checking the log' do
    history = TransactionHistory.new
    expect(history.log).to eq([])
  end

  context '#add_to_log' do
    it 'should add a log to the array' do
      transaction_history = TransactionHistory.new
      transaction_history.add_to_log(transaction)
      expect(transaction_history.log.length).to eq(1)
    end
  end
end
  