class StatementPrinter

  def show_statement(statement)
      p ["Date", "Credit", "Debit", "Balance"].map!{|header| header.center(20)}.join("||")
    statement.each do |transaction|
      p transaction.values.map!{ |x| x.to_s.center(20) }.join("||")
    end
  end

end
