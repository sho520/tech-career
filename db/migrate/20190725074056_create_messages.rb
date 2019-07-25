class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.references :group,null: false, foregin_key: true
      t.text :comment, null: false
      t.integer :position_id,null: false
      t.timestamps
    end
  end
end
