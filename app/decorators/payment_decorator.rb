class PaymentDecorator < Draper::Decorator
  delegate_all

  def date_of_payment
    payment_date.strftime("%-d.%m.%Y")
  end

  def date_of_payment_2
    payment_date.strftime("%Y.%m.%d")
  end

  def month
    payment_date.strftime("%-m")
  end
end
