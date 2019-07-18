class AddColumnToChat < ActiveRecord::Migration[5.2]
  def change
    change_column :chats, :student_id, :integer, {foreign_key: true}
    change_column :chats, :advisor_id, :integer, {foreign_key: true}
  end
end
