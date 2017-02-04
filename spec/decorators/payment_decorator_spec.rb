require 'spec_helper'

describe PaymentDecorator do
  let(:student_1) { create :student }
  let(:student_2) { create :student }
  let(:student_3) { create :student }
  let(:date_now) { Date.today }
  let(:date_past) { Date.today - 2.month }
  let(:payment) { create :payment, student_id: student_1.id, payment_date: '2017-02-03 18:36:02' }
  let(:payment_now) { create :payment, student_id: student_2.id, payment_date: date_now }
  let(:payment_past) { create :payment, student_id: student_3.id, payment_date: date_past }

  describe "#date_of_payment" do
    subject { payment.decorate.date_of_payment }
    it { is_expected.to eq '3.02.2017' }
  end

  describe "#date_of_payment_2" do
    subject { payment.decorate.date_of_payment_2 }
    it { is_expected.to eq '2017.02.03' }
  end

  describe "#month" do
    subject { payment.decorate.month }
    it { is_expected.to eq '2' }
  end

  describe "Method use to find payment in this month" do
    describe "#find_date" do
      describe "find payment done at present" do
        subject { payment_now.decorate.find_date(payment_now.student) }
        it { is_expected.to eq(date_now.strftime("%Y.%m.%d")) }
      end

      describe "find payment done one month ago" do
        subject { payment_past.decorate.find_date(payment_past.student) }
        it { is_expected.to eq I18n.t('payments.columns.no_date') }
      end
    end

    describe "#find_months" do
      describe "find payment done at present" do
        subject { payment_now.decorate.find_months(payment_now.student) }
        it { is_expected.to eq (date_now.strftime("%-m")) }
      end

      describe "find payment done one month ago" do
        subject { payment_past.decorate.find_months(payment_past.student) }
        it { is_expected.to eq I18n.t('payments.columns.no_date') }
      end
    end

    describe "#check_payment_month" do
      describe "payment done at present" do
        subject { payment_now.decorate.check_payment_month(payment_now.student) }
        it { is_expected.to eq true }
      end

      describe "payment done one month ago" do
        subject { payment_past.decorate.check_payment_month(payment_past.student) }
        it { is_expected.to eq false }
      end
    end

    describe "#find" do
      describe " find payment done at present" do
        subject { payment_now.decorate.find(payment_now.student, "%Y.%m.%d") }
        it { is_expected.to eq(payment_now.payment_date.strftime("%Y.%m.%d")) }
      end

      describe "find payment done one month ago" do
        subject { payment_past.decorate.find(payment_past.student, "%Y.%m.%d" ) }
        it { is_expected.to eq I18n.t('payments.columns.no_date') }
      end

      describe "find payment without data format" do
        subject { payment_now.decorate.find(payment_now.student, nil ) }
        it  { expect{payment_now.decorate.find(payment_now.student, nil )}.
                                            to raise_error(NoMethodError)}
      end
    end
  end
end
