class Bcomment < ActiveRecord::Base
  belongs_to :book
  belongs_to :user
  validates :user_id, presence: true
  default_scope -> {order('bcomments.created_at DESC')}
end
