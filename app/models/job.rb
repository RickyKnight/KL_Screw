class Job < ActiveRecord::Base
  attr_accessible :name, :questions_attributes

  has_many :jobs_trades
  has_many :trades, through: :jobs_trades
  has_many :questions, :dependent => :destroy
  accepts_nested_attributes_for :questions, :reject_if => lambda { |a| a[:content].blank?}, :allow_destroy => true
end