class Trade < ActiveRecord::Base
  attr_accessible :name, :jobs_trade_attributes, :job_ids

  has_many :jobs_trades
  has_many :jobs, through: :jobs_trades
  accepts_nested_attributes_for :jobs_trades, :reject_if => lambda { |a| a[:name].blank?}, :allow_destroy => true

  validates :name, presence: true

end