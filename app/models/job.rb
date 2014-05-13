class Job < ActiveRecord::Base
  attr_accessible :name

  has_many :trades, through: :jobs_trades
  has_many :jobs_trades
end