class PaymentDecorator < Draper::Decorator
  delegate_all

  def date_of_payment
    payment.payment_date.strftime("%-d.%m.%Y")
  end

  def date_of_payment_2
    payment.payment_date.strftime("%Y.%m.%d")
  end

  def month
    payment.payment_date.strftime("%-m")
  end

  def find_date(student)
    find(student ,"%Y.%m.%d")
  end

  def find_months(student)
    find(student, "%-m")
  end

  def check_payment_month(student)
    student.payments
      .where(payment_date: Date.current.at_beginning_of_month..Date.current.at_end_of_month)
      .exists?
  end

  def find (this_student ,format_date)
    if check_payment_month(this_student)
      this_student.payments
        .find_by(payment_date: Date.current.at_beginning_of_month..Date.current.at_end_of_month)
        .payment_date.strftime(format_date) if check_payment_month(this_student)
    else
      return I18n.t('payments.columns.no_date')
    end
  end
end
