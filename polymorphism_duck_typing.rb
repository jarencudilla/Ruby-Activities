# Duck_typing

class Payment
  def type(payment)
    payment.type
  end
end

class PaidByCash
  def type
    puts 'Fully Paid Cash'
  end
end

class PaidByCard
  def type
    puts 'Fully Paid by Debit Card / Credit Card'
  end
end

class AskedForInstallment
  def type
    puts 'Paid by Credit Card with 72 months O% interest installment'
  end
end

rich_guys_purchase = Payment.new
generic_person = Payment.new
smart_buyer_purchase = Payment.new

cash = PaidByCash.new
card = PaidByCard.new
installment = AskedForInstallment.new

rich_guys_purchase.type(cash)
generic_person.type(card)
smart_buyer_purchase.type(installment)
