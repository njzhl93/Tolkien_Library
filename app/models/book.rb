class Book < ActiveRecord::Base
	has_many :bcomments ,dependent: :destroy
end
