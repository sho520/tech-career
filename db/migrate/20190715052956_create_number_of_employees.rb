class CreateNumberOfEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :number_of_employees do |t|

      t.timestamps
      t.integer :30
      t.integer :50
      t.integer :100
      t.integer :300
      t.integer :500
      t.integer :1000
    end
  end
end
