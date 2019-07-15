class CreateNumberOfEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :number_of_employees do |t|

      t.timestamps
      t.integer :numuber_of_people
    end
  end
end
