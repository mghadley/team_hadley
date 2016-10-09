class Home < ActiveRecord::Base

	def upload_image(image)
	  response = Cloudinary::Uploader.upload(image.path)
		return response['public_id']
	end
end
