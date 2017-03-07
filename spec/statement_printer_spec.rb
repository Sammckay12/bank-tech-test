require 'statement_printer'


describe StatementPrinter do
  let(:statement) { described_class.new }
  let(:transaction) { [{date: "07/03/2017", credit: 50, debit: nil, balance: 50}] }


  context 'printing statement' do
    it 'prints statement as expected' do
      expect{statement.show_statement(transaction)}.to output("\"        Date        ||       Credit       ||       Debit        ||      Balance       \"\n\"     07/03/2017     ||         50         ||                    ||         50         \"\n").to_stdout
    end
  end

end
