class Trade < ActiveRecord::Base
  attr_accessible :name

  has_many :jobs, through: :jobs_trades
  has_many :jobs_trades
end