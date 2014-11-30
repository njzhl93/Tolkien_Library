class Mcomment < ActiveRecord::Base
  belongs_to :music
  belongs_to :user
  validates :user_id, presence: true
  default_scope -> {order('mcomments.created_at DESC')}
end
