class Fcomment < ActiveRecord::Base
  belongs_to :film
  belongs_to :user
  default_scope -> {order('fcomments.created_at DESC')}
end
