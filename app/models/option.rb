class Option < ActiveRecord::Base
  attr_accessible :content, :question_ids
  
  belongs_to :question
  has_many :answers
  has_many :questions, through: :answers
  has_many :questions, through: :answers
end