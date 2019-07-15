class CreateChats < ActiveRecord::Migration[5.2]
  def change
    create_table :chats do |t|

      t.timestamps
      t.text :comment, null: false
      t.references :student, null: false 
      # foreign_key: true
      t.references :advisor, null: false
      #  foreign_key: true
    end
  end
end
