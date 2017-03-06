require 'bank'

describe Bank do

  let(:bank) {described_class.new}

  describe '#balance' do
    context 'upon initialization' do
      it 'balance is 0' do
          expect(bank.balance).to eq 0
      end
    end
  end


  describe '#deposit' do
    context 'when making deposits' do
      it 'increases the balance by deposited amount' do
          bank.deposit(10)
          expect(bank.balance).to eq 10
      end
    end
  end

  describe '#withdraw' do
    context 'when making withdrawls' do
      it 'decreases the balance by deposited amount' do
        bank.deposit(20)
        bank.withdraw(10)
        expect(bank.balance).to eq 10
      end
    end
  end


end
