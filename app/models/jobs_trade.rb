class JobsTrade < ActiveRecord::Base
  attr_accessible :job_id, :trade_id

  belongs_to :job
  belongs_to :trade
end