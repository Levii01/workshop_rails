FactoryGirl.define do
  factory :payment do
    payment_date { Faker::Date.forward(23) }
    student_id { FactoryGirl.create(:student).id }
  end

end
