class Post < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 } # max 140 charrs/tweet
  default_scope -> { order(created_at :desc) } #FCFS
end
