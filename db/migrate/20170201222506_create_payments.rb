class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.datetime :payment_date
      t.integer :student_id

      t.timestamps null: false
    end
  end
end
