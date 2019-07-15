class CreateUserJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :user_jobs do |t|

      t.timestamps
    end
  end
end
