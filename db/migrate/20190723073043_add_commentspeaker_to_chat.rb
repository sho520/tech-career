class AddCommentspeakerToChat < ActiveRecord::Migration[5.2]
  def change
    add_column :chats, :commentspeaker, :integer, null: false
  end
end
