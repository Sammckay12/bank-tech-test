require 'bank'

describe Bank do

  let(:bank) {described_class.new}

  it 'inititialises with balance 0' do
    expect(bank.balance).to eq 0
  end
end
