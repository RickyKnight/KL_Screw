class Answer < ActiveRecord::Base
  attr_accessible :name, :option_id, :question_id, :user_id

  belongs_to :user_id
  belongs_to :question_id
  belongs_to :option_id
end
