class CreateLanguageJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :language_jobs do |t|
      t.references :job, null: false  #追加
      t.references :language, null: false  #追加
      t.timestamps
    end
  end
end
