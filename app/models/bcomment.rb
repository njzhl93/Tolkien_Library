class Bcomment < ActiveRecord::Base
  belongs_to :book
  belongs_to :user
  default_scope -> {order('bcomments.created_at DESC')}
end
