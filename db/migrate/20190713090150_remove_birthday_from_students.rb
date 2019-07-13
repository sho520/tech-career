class RemoveBirthdayFromStudents < ActiveRecord::Migration[5.2]
  def change
    remove_column :students, :birthday, :integer
  end
end
