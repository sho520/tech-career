class CreateStudentJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :student_jobs do |t|
      t.references :student, null: false  #追加
      t.references :job, null: false  #追加
      t.references :student_job_state, null: false  #追加
      t.timestamps
    end
  end
end
