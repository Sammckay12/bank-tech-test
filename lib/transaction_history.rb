class TransactionHistory

attr_accessor :statement

  def initialize
    @statement = []
  end

  def show_statement
      p ["Date", "Credit", "Debit", "Balance"].map!{|header| header.center(20)}.join("||")
    @statement.each do |transaction|
      p transaction.values.map!{ |x| x.to_s.center(20) }.join("||")
    end
  end


end
