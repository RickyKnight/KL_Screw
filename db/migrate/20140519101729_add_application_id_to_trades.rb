class AddApplicationIdToTrades < ActiveRecord::Migration
  def change
    add_column :trades, :application_id, :integer
  end
end
