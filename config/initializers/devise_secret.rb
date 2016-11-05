devise = "#{Rails.root}/config/devise.yml"
 if File.exists? devise
  config = YAML.load_file(devise)
  config.each { |key, value| ENV[key] || ENV[key] = value.to_s }
 end