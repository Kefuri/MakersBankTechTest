require 'statement'

describe Statement do
  let(:transaction_history) { double :transaction_history}
  let(:transaction) { double :transaction }
  let(:account) { double :account }

  context "#print_statement" do
    it "should print an empty statement when there is no history" do
      expect(transaction_history).to receive(:get_transaction_log).and_return([])
      expect{ Statement.print_statement(transaction_history.get_transaction_log, account) }.to output("date || credit || debit || balance\n").to_stdout
    end

    it "should print a statement with one deposit transaction of 1000" do
      expect(transaction_history).to receive(:get_transaction_log).and_return([transaction])
      expect(transaction).to receive(:get_amount).and_return(1000)
      expect(transaction).to receive(:get_date).and_return("14/01/2012")
      expect(account).to receive(:get_balance).and_return("1000")
      expect{ Statement.print_statement(transaction_history.get_transaction_log, account) }.to output("date || credit || debit || balance\n14/01/2012 || 1000.00 || || 1000.00\n").to_stdout
    end
  end
end