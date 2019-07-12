class AddColumnStudents < ActiveRecord::Migration[5.2]
  def change
    add_reference :students, :advisor, foreign_key: true
  end
end
