class ImageWorker
	include Sidekiq::Worker
	def perform(home_id, paths)
		home = Home.find_by(id: home_id)
		public_ids = []
		paths.each do |path|
			response = Cloudinary::Uploader.upload(path)
			public_ids << response['public_id'] 
		end
		home.photos = public_ids
		home.save
	end
end