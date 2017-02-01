class AddBirthDateToStudents < ActiveRecord::Migration
  def change
    add_column :students, :birth_date, :datetime
  end
end
