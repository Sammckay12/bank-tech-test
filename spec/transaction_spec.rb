require 'transaction'

describe Transaction do
  let(:transaction) { described_class.new(credit: 10, debit: nil , balance:10) }

  describe '#transaction' do
    context 'upon initialization' do
      it 'initialises with transaction amount' do
        expect(transaction.line_item[:credit]).to eq 10
      end
      it 'initialises with state' do
        expect(transaction.line_item[:debit]).to eq nil
      end
      it 'initialises with date stamp' do
        expect(transaction.line_item[:date]).to eq DateTime.now.strftime('%d/%m/%Y')
      end
      it 'initialises with the total balance' do
        expect(transaction.line_item[:balance]).to eq 10
      end
    end

  end

end
