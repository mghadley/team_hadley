class Home < ActiveRecord::Base
	validates_presence_of :line_1

	def self.masonry
		homes = [[],[]]
		all.each_with_index do |home, i|
			if i == 0
				homes[0] << home
			elsif i == 1
				homes[1] << home
			else
				if homes[0].inject(0) { |sum, h| sum + h.description.length} < homes[1].inject(0) { |sum, h| sum + h.description.length}
					homes[0] << home
				else
					homes[1] << home
				end
			end
		end
		return homes
	end

	def self.first_half
		all[0..(count/2 - 1)]
	end

	def self.second_half
		if count > 1
			all[(count/2)..(count - 1)]
		end
	end

	def self.upload_image(image)
	  response = Cloudinary::Uploader.upload(image.path)
		return response['public_id']
	end

	def self.upload_images(paths)
		public_ids = []
		paths.each do |path|
			response = Cloudinary::Uploader.upload(path)
			public_ids << response['public_id']
		end
		return public_ids
	end
end
