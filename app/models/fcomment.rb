class Fcomment < ActiveRecord::Base
  belongs_to :film, dependent: :destroy
  belongs_to :user
  default_scope {order('fcomments.created_at DESC')}
end
