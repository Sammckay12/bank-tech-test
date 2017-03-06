class Transaction

  attr_reader :date, :amount, :state

  def initialize(amount:, state:)
    @date = DateTime.now.strftime('%d/%m/%Y')
    @amount = amount
    @state = state
  end
end
