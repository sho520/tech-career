class DeleteCoulumnFromChat < ActiveRecord::Migration[5.2]
  def change
    remove_column :chats, :student_id_id
  end
end
