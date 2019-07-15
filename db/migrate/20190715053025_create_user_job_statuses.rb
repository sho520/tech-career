class CreateUserJobStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :user_job_statuses do |t|

      t.timestamps
    end
  end
end
