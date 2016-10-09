cloudinary = "#{Rails.root}/config/cloudinary_secret.yml"
 if File.exists? cloudinary
  config = YAML.load_file(cloudinary)
  config.each { |key, value| ENV[key] || ENV[key] = value.to_s }
 end