require 'transaction'

describe Transaction do
  let(:transaction) { described_class.new(amount: 10, state: 'credit') }

  describe '#transaction' do
    context 'upon initialization' do
      it 'initialises with transaction amount' do
        expect(transaction.amount).to eq 10
      end
      it 'initialises with state' do
        expect(transaction.state).to eq 'credit'
      end
      it 'initialises with date stamp' do
        expect(transaction.date).to eq DateTime.now.strftime('%d/%m/%Y')
      end
    end

  end

end
