class CreateVariousInsuranceJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :various_insurance_jobs do |t|
      t.references :various_insurance, null: false  #追加
      t.references :job, null: false  #追加
      t.timestamps
    end
  end
end
