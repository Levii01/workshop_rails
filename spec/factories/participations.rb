FactoryGirl.define do
  factory :participation do
    student { FactoryGirl.create(:student) }
    subject_item { FactoryGirl.create(:subject_item) }
  end
end
