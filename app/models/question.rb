class Question < ActiveRecord::Base
  attr_accessible :content, :job_id, :question_type, :options_attributes

  belongs_to :job
  has_many :options, :dependent => :destroy
  accepts_nested_attributes_for :options, :reject_if => lambda { |a| a[:content].blank?}, :allow_destroy => true
end