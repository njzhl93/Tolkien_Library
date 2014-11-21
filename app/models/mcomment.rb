class Mcomment < ActiveRecord::Base
  belongs_to :music, dependent: :destroy
  belongs_to :user
  default_scope {order('mcomments.created_at DESC')}
end
