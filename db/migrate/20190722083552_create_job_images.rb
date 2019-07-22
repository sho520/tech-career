class CreateJobImages < ActiveRecord::Migration[5.2]
  def change
    create_table :job_images do |t|
      t.references :job, null: false, foreign_key: true
      t.string :url, null: false
      t.timestamps
    end
  end
end
