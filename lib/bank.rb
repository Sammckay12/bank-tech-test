require_relative 'transaction'
require_relative 'transaction_history'
require_relative 'statement_printer'

class Bank

  DEFAULT_BALANCE = 0

  attr_reader :balance, :transaction_history

  def initialize
    @balance = DEFAULT_BALANCE
    @transaction_history = TransactionHistory.new
  end

  def deposit(amount)
    raise "Only positive amount can be deposited!" if amount < 0
    @balance += amount
    create_transaction(credit: amount)
  end

  def withdraw(amount)
    raise "Only positive amount can be withdrawn!" if amount < 0
    raise "Withdrawl amount exceeds balance" if amount > @balance
    @balance -=amount
    create_transaction(debit: amount)
  end

  def statement
    @statement = StatementPrinter.new
    @statement.show_statement(@transaction_history.statement)
  end

  private

  def create_transaction(credit: nil, debit: nil)
    transaction = Transaction.new(credit: credit, debit: debit, balance: @balance)
    @transaction_history.statement << transaction.line_item
  end


end
