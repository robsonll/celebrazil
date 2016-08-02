
#have to use Aws instead of AWS: http://stackoverflow.com/questions/22826432/uninitialized-constant-aws-nameerror

#http://docs.aws.amazon.com/sdkforruby/api/
require 'json'
#creds = JSON.load(File.read('../sensitive_data/secrets.json'))   #read file from *external* directory

# Aws.config.update({
#   credentials: Aws::Credentials.new('AKIAJPEW6LDEMNYZWLUQ', 'MJkq6GwyRhu78AhNn8XIoVU3Hgkr/YDEED8i0lTy'),
#   region: 'sa-east-1'
# })

# list buckets in Amazon S3
# s3 = Aws::S3::Client.new
# resp = s3.list_buckets
#S3_BUCKET = resp.buckets[0]
# S3_BUCKET = 'celebrazil'
# resp.buckets.map(&:name)

# S3 = Aws::S3::Resource.new(region: 'sa-east-1')