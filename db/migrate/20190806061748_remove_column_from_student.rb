class RemoveColumnFromStudent < ActiveRecord::Migration[5.2]
  def change
    remove_column :students, :image_url
  end
end
