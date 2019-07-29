class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.references :student,null: false, foregin_key: true
      t.references :advisor,null: false, foregin_key: true
      t.timestamps

    end
  end
end
