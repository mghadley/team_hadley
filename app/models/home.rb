class Home < ActiveRecord::Base

	def self.upload_image(image)
	  response = Cloudinary::Uploader.upload(image.path)
		return response['public_id']
	end

	def self.upload_images(images)
		public_ids = []
		images.each do |image|
			response = Cloudinary::Uploader.upload(image.path)
			public_ids << response['public_id']
		end
		return public_ids
	end
end
