require 'aws-sdk'
require 'uuid'

credentials = Aws::Credentials.new Settings.aws.s3.access_key_id,
  Settings.aws.s3.secret_access_key
config = {
  region: Settings.aws.s3.region,
  credentials: credentials
}
uuid = UUID.new
bucket_name = "ruby-sdk-sample"

AMAZON_CLIENT = Aws::S3::Client.new config

AMAZON_RESOURCE = Aws::S3::Resource.new client: AMAZON_CLIENT

AMAZON_BUCKET = AMAZON_RESOURCE.bucket bucket_name
