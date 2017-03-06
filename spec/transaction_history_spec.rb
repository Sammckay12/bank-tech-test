require 'transaction'

describe TransactionHistory do
  let(:transaction_history) { described_class.new }

  context 'upon initialization' do
    it 'initialises with statement as empty array' do
      expect(transaction_history.statement).to eq []
    end
  end

end
