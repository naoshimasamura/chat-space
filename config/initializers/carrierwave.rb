require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|

  case Rails.env
  when 'production'
   config.fog_credentials = {
   provider:                'AWS',
   aws_access_key_id: "your-aws-id",
   aws_secret_access_key: "your-secret-key",
   region:                  'your-region'
  }
    config.fog_directory = 'your-bucket-name'
    config.asset_host = 'your-bucket-url'

  when 'staging'
   config.fog_credentials = {
   provider:                'AWS',
   aws_access_key_id:       "your-secret-id",
   aws_secret_access_key:   "your-secret-key",
   region:                  'your-region'
 }
    config.fog_directory = 'your-secret-bucket-name'
    config.asset_host = 'your-buucket-url'
end
end
  config.storage = :fog
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: Rails.application.secrets.aws_access_key_id,
    aws_secret_access_key: Rails.application.secrets.aws_secret_access_key,
    region: 'ap-northeast-1'
  }

  config.fog_directory  = 'masamura'
  config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/masamura'
end 