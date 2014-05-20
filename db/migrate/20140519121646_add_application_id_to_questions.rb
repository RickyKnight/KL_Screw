class AddApplicationIdToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :application_id, :integer
  end
end
