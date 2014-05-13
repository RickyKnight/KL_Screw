class Question < ActiveRecord::Base
  attr_accessible :content, :job_id, :question_type
end
