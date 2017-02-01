class Payment < ActiveRecord::Base
  belongs_to :student

  validates :student_id, :payment_date, presence: true
end
