class Film < ActiveRecord::Base
	validates :title, presence: true
    validates :date, presence: true
	validates :content, presence: true, length: { maximum: 140 }
	validates :director, presence:true
	validates :character, presence:true
	default_scope {order('films.created_at DESC')}
end
