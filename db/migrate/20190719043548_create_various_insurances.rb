class CreateVariousInsurances < ActiveRecord::Migration[5.2]
  def change
    create_table :various_insurances do |t|
      t.string :name, null: false
      t.timestamps
    end
  end
end
