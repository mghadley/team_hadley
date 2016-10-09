class Home < ActiveRecord::Base

	def upload_image(image)
	  response = Cloudinary::Uploader.upload(image.path)
	  puts '**********************', response
		return response['public_id']
	end
end
