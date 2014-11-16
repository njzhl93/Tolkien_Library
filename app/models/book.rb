class Book < ActiveRecord::Base
    validates :title, presence: true
    validates :date, presence: true
	validates :content, presence: true, length: { maximum: 140 }
	validates :writer, presence: true
	validates :publisher, presence: true
	default_scope {order('books.created_at DESC')}
end
