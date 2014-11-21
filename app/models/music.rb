class Music < ActiveRecord::Base
	has_many :mcomments ,dependent: :destroy
end
