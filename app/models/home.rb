class Home < ActiveRecord::Base

	def upload_image(image)
	  response = Cloudinary::Uploader.upload(image.path)
	  binding.pry
		return response['public_id']
	end
end
