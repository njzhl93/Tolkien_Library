class Music < ActiveRecord::Base
	validates :title, presence: true
    validates :date, presence: true
	validates :content, presence: true, length: { maximum: 140 }
	validates :performer, presence: true
	validates :publisher, presence:true
	default_scope {order('musics.created_at DESC')}
end
