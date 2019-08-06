class RenameTitreColumnToMessages < ActiveRecord::Migration[5.2]
  def change
    rename_column :messages, :position_id, :position_number
  end
end
