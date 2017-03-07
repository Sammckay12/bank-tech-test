class Transaction

  attr_reader :line_item

  def initialize(credit: nil, debit: nil,  balance:)
    @line_item = { date: DateTime.now.strftime('%d/%m/%Y'),
                    credit: credit ,
                    debit: debit,
                    balance: balance }

  end
end
