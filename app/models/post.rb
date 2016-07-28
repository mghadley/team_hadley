class Post < ActiveRecord::Base
	validates_presence_of :title, :body
	validates_uniqueness_of :title

	def self.ordered_by_date
		order(created_at: :desc)
	end
end
