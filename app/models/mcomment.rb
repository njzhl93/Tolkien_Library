class Mcomment < ActiveRecord::Base
  belongs_to :music
  belongs_to :user
  default_scope -> {order('mcomments.created_at DESC')}
end
