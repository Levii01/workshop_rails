json.array!(@payments) do |payment|
  json.extract! payment, :id, :payment_date, :student_id
  json.url payment_url(payment, format: :json)
end
