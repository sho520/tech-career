class CreateEmployeeTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :employee_types do |t|

      t.timestamps
      t.string :full_time
      t.string :part_time
      t.string :dispatch
    end
  end
end
