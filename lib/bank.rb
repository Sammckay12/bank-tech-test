class Bank

  DEFAULT_BALANCE = 0

  attr_reader :balance

  def initialize
    @balance = DEFAULT_BALANCE
  end

  def deposit(amount)
    raise "Only positive amount can be deposited!" if amount < 0
    @balance += amount
  end

  def withdraw(amount)
    raise "Only positive amount can be withdrawn!" if amount < 0
    raise "Withdrawl amount exceeds balance" if amount > @balance
    @balance -=amount
  end

end
