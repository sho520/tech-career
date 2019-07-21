class CreateHolidayVacationJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :holiday_vacation_jobs do |t|
      t.references :job, null: false  #追加
      t.references :holiday_vacation, null: false  #追加
      t.timestamps
    end
  end
end
