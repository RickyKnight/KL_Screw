class Answers < ActiveRecord::Migration
  def change
    create_table :answers, :id => false do |t|
      t.integer :user_id
      t.integer :application_id
    end
  end
end
