class AddTradeIdToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :trade_id, :integer
  end
end
