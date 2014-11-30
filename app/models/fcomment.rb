class Fcomment < ActiveRecord::Base
  belongs_to :film
  belongs_to :user
  validates :user_id, presence: true
  default_scope -> {order('fcomments.created_at DESC')}
end
