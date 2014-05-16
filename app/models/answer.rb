class Answer < ActiveRecord::Base
  attr_accessible :name, :option_id, :question_id, :user_id
end
