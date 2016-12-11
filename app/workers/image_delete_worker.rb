class ImageDeleteWorker
  include Sidekiq::Worker
  # photos should be an array
  def perform(photos)
    puts "!" * 30, "deleting #{photos}"
    Cloudinary::Api.delete_resources(photos)
  end
end