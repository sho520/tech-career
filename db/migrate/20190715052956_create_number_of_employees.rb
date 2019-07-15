class CreateNumberOfEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :number_of_employees do |t|

      t.timestamps
      t.string :number
    end
  end
end
