class CreateVariousAllowances < ActiveRecord::Migration[5.2]
  def change
    create_table :various_allowances do |t|
      t.string :name, null: false
      t.timestamps
    end
  end
end
