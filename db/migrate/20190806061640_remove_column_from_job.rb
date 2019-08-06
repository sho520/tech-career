class RemoveColumnFromJob < ActiveRecord::Migration[5.2]
  def change
    remove_column :jobs, :image_url
  end
end
