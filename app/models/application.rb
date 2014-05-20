class Application < ActiveRecord::Base
  attr_accessible :name, :job_id, :user_id, :trade_id

  has_many :trades
  has_many :questions
  belongs_to :user
  belongs_to :job
  belongs_to :trade
end
