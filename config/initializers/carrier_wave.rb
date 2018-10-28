if Rails.env.production?
  CarrierWave.configure do |config|
    config.storage = :fog
    config.fog_credentials = {
      :provider               => 'AWS',                            # required
      :aws_access_key_id      => ENV['S3_ACCESS_KEY'],         # required
      :aws_secret_access_key  => ENV['S3_SECRET_KEY'],     # required
    }
    config.fog_directory  = ENV['S3_BUCKET']                 # required
    config.fog_public     = true                                   # optional, defaults to true
    config.root = Rails.root.join('tmp')
    config.cache_dir = 'files'
    config.permissions = 0777
    config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
  end
else
  CarrierWave.configure do |config|
    config.storage :file
  end
end