require_relative 'transaction'
require_relative 'transaction_history'


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
    create_transaction(amount, 'credit')
  end

  def withdraw(amount)
    raise "Only positive amount can be withdrawn!" if amount < 0
    raise "Withdrawl amount exceeds balance" if amount > @balance
    @balance -=amount
    create_transaction(amount, 'debit')
  end

  def statement
    @transaction_history.statement
  end

  private

  def create_transaction(amount, state)
    transaction = Transaction.new(amount: amount, state: state)
    @transaction_history.statement << transaction
  end


end
