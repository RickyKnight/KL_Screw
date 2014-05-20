class ChopApplicationIdFromTrades < ActiveRecord::Migration
  def up
    remove_column :trades, :application_id
  end

  def down
    add_column :trades, :application_id, :integer
  end
end
