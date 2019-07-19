class CreateVariousAllowanceJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :various_allowance_jobs do |t|
      t.references :various_allowance, null: false  #追加
      t.references :job, null: false  #追加
      t.timestamps
    end
  end
end
