class AddBirthYearToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :birth_year, :integer
    add_column :students, :birth_month, :integer
    add_column :students, :birth_day, :integer
    add_column :students, :image, :string
  end
end
