class Job < ActiveRecord::Base
  attr_accessible :name, :jobs_trades_attributes

  has_many :trades, through: :jobs_trades
  has_many :jobs_trades
end