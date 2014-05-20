class RenameAplicationIdToApplicationIdInJobs < ActiveRecord::Migration
  def change
    rename_column :jobs, :aplication_id, :application_id
  end
end
