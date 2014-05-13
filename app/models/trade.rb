class Trade < ActiveRecord::Base
  attr_accessible :name, :jobs_trades_attributes

  has_many :jobs, through: :jobs_trades
  has_many :jobs_trades
end