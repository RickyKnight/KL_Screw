class CreateJobsTrades < ActiveRecord::Migration
  def change
    create_table :jobs_trades do |t|
      t.integer :job_id
      t.integer :trade_id

      t.timestamps
    end
  end
end
