class AddApplicationIdToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :aplication_id, :integer
  end
end
