require 'transaction_history'

describe TransactionHistory do
  let(:transaction) { double("Deposit") }
  
  it 'should return an empty array when checking the log' do
    history = TransactionHistory.new
    expect(history.get_transaction_log).to eq([])
  end

  context '#add_to_log' do
    it 'should add a log to the array' do
      transaction_history = TransactionHistory.new
      allow(transaction).to receive(:get_type).and_return("Deposit")
      allow(transaction).to receive(:get_amount).and_return(100)
      allow(transaction).to receive(:get_date).and_return("10/10/1010")
      transaction_history.add_to_log(transaction)
      
      expect(transaction_history.get_transaction_log.length).to eq(1)
    end
  end
end
  