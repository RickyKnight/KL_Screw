class ChopApplicationId < ActiveRecord::Migration
  def up
    remove_column :jobs, :application_id
  end

  def down
    add_column :jobs, :application_id, :integer
  end
end
