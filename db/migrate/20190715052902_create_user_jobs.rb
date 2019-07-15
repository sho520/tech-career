class CreateUserJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :user_jobs do |t|
      t.references :student, null: false  #追加
      t.references :job, null: false  #追加
      t.references :user_job_state, null: false  #追加
      t.timestamps
    end
  end
end
