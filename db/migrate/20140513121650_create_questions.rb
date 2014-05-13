class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :job_id
      t.text :content
      t.integer :question_type

      t.timestamps
    end
  end
end
