require 'transaction_history'

describe TransactionHistory do
  it 'should return an empty array when checking the log' do
    history = TransactionHistory.new
    expect(history.log).to eq([])
  end
end
  